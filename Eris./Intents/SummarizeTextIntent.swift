//
//  SummarizeTextIntent.swift
//  Eris.
//
//  Created by Assistant on 28/6/25.
//

import AppIntents
import SwiftData
import SwiftUI

@available(iOS 16.0, *)
struct SummarizeTextIntent: AppIntent {
    static var title: LocalizedStringResource = "Summarize Text"
    static var description: LocalizedStringResource = "Get a summary of any text using Eris"
    
    @Parameter(title: "Text to Summarize", description: "The text you want to summarize")
    var text: String
    
    @Parameter(title: "Summary Length", description: "How long should the summary be", default: .medium)
    var summaryLength: SummaryLength
    
    static var parameterSummary: some ParameterSummary {
        Summary("Summarize this text: \(\.$text)") {
            \.$summaryLength
        }
    }
    
    @MainActor
    func perform() async throws -> some IntentResult & ReturnsValue<String> & ProvidesDialog {
        // Check if we have an active model
        guard let activeModel = ModelManager.shared.activeModel else {
            let error = "No AI model selected. Please open Eris and download a model first."
            return .result(value: error, dialog: IntentDialog(stringLiteral: error))
        }
        
        // Create prompt for summarization
        let prompt = """
        Please summarize the following text in a \(summaryLength.rawValue) format:
        
        \(text)
        """
        
        // Create a thread for this task
        let thread = Thread(title: "Summary: \(text.prefix(30))...")
        let userMessage = Message(content: prompt, role: .user)
        thread.addMessage(userMessage)
        
        // Generate summary
        let llmEvaluator = LLMEvaluator()
        let systemPrompt = "You are an expert at creating clear, concise summaries. Focus on the key points and main ideas."
        
        let summary = await llmEvaluator.generate(
            thread: thread,
            systemPrompt: systemPrompt
        )
        
        // Add assistant response
        let assistantMessage = Message(content: summary, role: .assistant)
        thread.addMessage(assistantMessage)
        
        return .result(value: summary, dialog: IntentDialog(stringLiteral: summary))
    }
    
    static var openAppWhenRun: Bool = false
}

// Summary length options
enum SummaryLength: String, AppEnum {
    case brief = "brief"
    case medium = "medium"
    case detailed = "detailed"
    
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Summary Length"
    
    static var caseDisplayRepresentations: [SummaryLength: DisplayRepresentation] = [
        .brief: "Brief - 1-2 sentences",
        .medium: "Medium - 1 paragraph",
        .detailed: "Detailed - Multiple paragraphs"
    ]
}