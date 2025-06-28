//
//  QuickChatIntent.swift
//  Eris.
//
//  Created by Assistant on 28/6/25.
//

import AppIntents
import SwiftData
import SwiftUI

@available(iOS 16.0, *)
struct QuickChatIntent: AppIntent {
    static var title: LocalizedStringResource = "Quick Chat"
    static var description: LocalizedStringResource = "Start a quick conversation with Eris"
    
    @Parameter(title: "Message", description: "Your message to Eris")
    var prompt: String
    
    @Parameter(title: "Continue Conversation", description: "Keep the conversation going", default: false)
    var continuous: Bool
    
    @Parameter(title: "Response Style", description: "How Eris should respond", default: .normal)
    var responseStyle: ResponseStyle
    
    static var parameterSummary: some ParameterSummary {
        Summary("Ask Eris: \(\.$prompt)") {
            \.$continuous
            \.$responseStyle
        }
    }
    
    @MainActor
    func perform() async throws -> some IntentResult & ReturnsValue<String> & ProvidesDialog {
        // Check if we have an active model
        guard let activeModel = ModelManager.shared.activeModel else {
            let error = "No AI model selected. Please open Eris and download a model first."
            return .result(value: error, dialog: IntentDialog(stringLiteral: error))
        }
        
        // Create a new thread for this shortcut session
        let thread = Thread(title: "Shortcut: \(prompt.prefix(30))...")
        
        // Add user message
        let userMessage = Message(content: prompt, role: .user)
        thread.addMessage(userMessage)
        
        // Generate response
        let llmEvaluator = LLMEvaluator()
        let systemPrompt = buildSystemPrompt(for: responseStyle)
        
        var response = await llmEvaluator.generate(
            thread: thread,
            systemPrompt: systemPrompt
        )
        
        // Limit response length for shortcuts
        let maxLength = continuous ? 300 : 500
        if response.count > maxLength {
            response = String(response.prefix(maxLength)).trimmingCharacters(in: .whitespaces) + "..."
        }
        
        // Add assistant message
        let assistantMessage = Message(content: response, role: .assistant)
        thread.addMessage(assistantMessage)
        
        // If continuous mode, prompt for next message
        if continuous {
            throw $prompt.requestValue(IntentDialog(stringLiteral: "\(response)\n\nWhat's your next message?"))
        }
        
        return .result(value: response, dialog: IntentDialog(stringLiteral: response))
    }
    
    private func buildSystemPrompt(for style: ResponseStyle) -> String {
        let basePrompt = "You are Eris, a helpful AI assistant running locally on the user's device."
        
        switch style {
        case .normal:
            return basePrompt
        case .concise:
            return "\(basePrompt) Keep your responses brief and to the point. Use short sentences."
        case .detailed:
            return "\(basePrompt) Provide comprehensive and detailed responses with examples when appropriate."
        case .creative:
            return "\(basePrompt) Be creative and imaginative in your responses. Feel free to use metaphors and analogies."
        case .professional:
            return "\(basePrompt) Maintain a professional and formal tone. Use precise language."
        }
    }
    
    static var openAppWhenRun: Bool = false
}

// Response style options
enum ResponseStyle: String, AppEnum {
    case normal = "Normal"
    case concise = "Concise"
    case detailed = "Detailed"
    case creative = "Creative"
    case professional = "Professional"
    
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Response Style"
    
    static var caseDisplayRepresentations: [ResponseStyle: DisplayRepresentation] = [
        .normal: "Normal",
        .concise: "Concise - Brief responses",
        .detailed: "Detailed - Comprehensive answers",
        .creative: "Creative - Imaginative responses",
        .professional: "Professional - Formal tone"
    ]
}