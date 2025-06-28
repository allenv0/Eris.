//
//  ErisShortcutsProvider.swift
//  Eris.
//
//  Created by Assistant on 28/6/25.
//

import AppIntents

@available(iOS 16.0, *)
struct ErisShortcutsProvider: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: QuickChatIntent(),
            phrases: [
                "Ask \(.applicationName) a question",
                "Chat with \(.applicationName)",
                "Start a conversation with \(.applicationName)",
                "Talk to \(.applicationName)"
            ],
            shortTitle: "Quick Chat",
            systemImageName: "bubble.left.and.bubble.right"
        )
        
        AppShortcut(
            intent: SummarizeTextIntent(),
            phrases: [
                "Summarize text with \(.applicationName)",
                "Get a summary from \(.applicationName)",
                "Make a summary using \(.applicationName)"
            ],
            shortTitle: "Summarize",
            systemImageName: "doc.text.magnifyingglass"
        )
        
        AppShortcut(
            intent: TranslateTextIntent(),
            phrases: [
                "Translate with \(.applicationName)",
                "Translate text using \(.applicationName)",
                "Use \(.applicationName) to translate"
            ],
            shortTitle: "Translate",
            systemImageName: "globe"
        )
        
        AppShortcut(
            intent: GenerateTextIntent(),
            phrases: [
                "Generate text with \(.applicationName)",
                "Write something using \(.applicationName)",
                "Create text with \(.applicationName)"
            ],
            shortTitle: "Generate Text",
            systemImageName: "pencil.and.outline"
        )
    }
    
    static var shortcutTileColor: ShortcutTileColor = .purple
}