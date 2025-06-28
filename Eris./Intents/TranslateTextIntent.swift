//
//  TranslateTextIntent.swift
//  Eris.
//
//  Created by Assistant on 28/6/25.
//

import AppIntents
import SwiftData
import SwiftUI

@available(iOS 16.0, *)
struct TranslateTextIntent: AppIntent {
    static var title: LocalizedStringResource = "Translate Text"
    static var description: LocalizedStringResource = "Translate text between languages using Eris"
    
    @Parameter(title: "Text to Translate", description: "The text you want to translate")
    var text: String
    
    @Parameter(title: "Target Language", description: "Language to translate to", default: .spanish)
    var targetLanguage: Language
    
    @Parameter(title: "Source Language", description: "Language to translate from", default: .autoDetect)
    var sourceLanguage: Language
    
    static var parameterSummary: some ParameterSummary {
        Summary("Translate '\(\.$text)' to \(\.$targetLanguage)") {
            \.$sourceLanguage
        }
    }
    
    @MainActor
    func perform() async throws -> some IntentResult & ReturnsValue<String> & ProvidesDialog {
        // Check if we have an active model
        guard let activeModel = ModelManager.shared.activeModel else {
            let error = "No AI model selected. Please open Eris and download a model first."
            return .result(value: error, dialog: IntentDialog(stringLiteral: error))
        }
        
        // Build translation prompt
        var prompt: String
        if sourceLanguage == .autoDetect {
            prompt = "Translate the following text to \(targetLanguage.displayName). Only provide the translation, no explanations:\n\n\(text)"
        } else {
            prompt = "Translate the following text from \(sourceLanguage.displayName) to \(targetLanguage.displayName). Only provide the translation, no explanations:\n\n\(text)"
        }
        
        // Create a thread
        let thread = Thread(title: "Translate: \(text.prefix(30))...")
        let userMessage = Message(content: prompt, role: .user)
        thread.addMessage(userMessage)
        
        // Generate translation
        let llmEvaluator = LLMEvaluator()
        let systemPrompt = "You are a professional translator. Provide accurate, natural-sounding translations while preserving the original meaning and tone."
        
        let translation = await llmEvaluator.generate(
            thread: thread,
            systemPrompt: systemPrompt
        )
        
        // Add assistant response
        let assistantMessage = Message(content: translation, role: .assistant)
        thread.addMessage(assistantMessage)
        
        return .result(value: translation, dialog: IntentDialog(stringLiteral: translation))
    }
    
    static var openAppWhenRun: Bool = false
}

// Language options
enum Language: String, AppEnum {
    case autoDetect = "auto"
    case english = "english"
    case spanish = "spanish"
    case french = "french"
    case german = "german"
    case italian = "italian"
    case portuguese = "portuguese"
    case chinese = "chinese"
    case japanese = "japanese"
    case korean = "korean"
    case arabic = "arabic"
    case russian = "russian"
    case hindi = "hindi"
    
    var displayName: String {
        switch self {
        case .autoDetect: return "Auto-detect"
        case .english: return "English"
        case .spanish: return "Spanish"
        case .french: return "French"
        case .german: return "German"
        case .italian: return "Italian"
        case .portuguese: return "Portuguese"
        case .chinese: return "Chinese (Simplified)"
        case .japanese: return "Japanese"
        case .korean: return "Korean"
        case .arabic: return "Arabic"
        case .russian: return "Russian"
        case .hindi: return "Hindi"
        }
    }
    
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Language"
    
    static var caseDisplayRepresentations: [Language: DisplayRepresentation] = [
        .autoDetect: "Auto-detect",
        .english: "English",
        .spanish: "Spanish",
        .french: "French",
        .german: "German",
        .italian: "Italian",
        .portuguese: "Portuguese",
        .chinese: "Chinese",
        .japanese: "Japanese",
        .korean: "Korean",
        .arabic: "Arabic",
        .russian: "Russian",
        .hindi: "Hindi"
    ]
}