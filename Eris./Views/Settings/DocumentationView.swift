//
//  DocumentationView.swift
//  Eris.
//
//  Created by Assistant on 28/6/25.
//

import SwiftUI

struct DocumentationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    // Getting Started
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Getting Started", systemImage: "sparkles")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            InfoRow(
                                icon: "1.circle.fill",
                                iconColor: .accentColor,
                                title: "Download a Model",
                                subtitle: "Go to Settings → Model Management"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "2.circle.fill",
                                iconColor: .accentColor,
                                title: "Create a Chat",
                                subtitle: "Tap the + button on the home screen"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "3.circle.fill",
                                iconColor: .accentColor,
                                title: "Start Chatting",
                                subtitle: "Type your message and tap send"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Privacy
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Privacy First", systemImage: "lock.shield")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            InfoRow(
                                icon: "iphone",
                                iconColor: .green,
                                title: "100% On-Device",
                                subtitle: "All processing happens locally"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "wifi.slash",
                                iconColor: .green,
                                title: "Works Offline",
                                subtitle: "No internet needed after model download"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "eye.slash",
                                iconColor: .green,
                                title: "No Tracking",
                                subtitle: "Zero analytics or telemetry"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Models
                    VStack(alignment: .leading, spacing: 12) {
                        Label("AI Models", systemImage: "cpu")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            NavigationLink(destination: ModelsDetailView()) {
                                InfoRow(
                                    icon: "cpu",
                                    iconColor: .blue,
                                    title: "Understanding Models",
                                    subtitle: "Learn about different AI models",
                                    showChevron: true
                                )
                            }
                            .buttonStyle(SettingsRowButtonStyle())
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "hare",
                                iconColor: .orange,
                                title: "Smaller = Faster",
                                subtitle: "0.5B-1.5B models for quick responses"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "brain",
                                iconColor: .purple,
                                title: "Larger = Smarter",
                                subtitle: "3B+ models for complex tasks"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Chat Features
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Chat Features", systemImage: "bubble.left.and.bubble.right")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            NavigationLink(destination: ChatFeaturesDetailView()) {
                                InfoRow(
                                    icon: "bubble.left.and.bubble.right",
                                    iconColor: .indigo,
                                    title: "Chat Controls",
                                    subtitle: "Learn all chat features",
                                    showChevron: true
                                )
                            }
                            .buttonStyle(SettingsRowButtonStyle())
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "hand.raised",
                                iconColor: .blue,
                                title: "Long Press to Copy",
                                subtitle: "Hold any message to copy text"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "pin",
                                iconColor: .orange,
                                title: "Pin Important Chats",
                                subtitle: "Long press a chat to pin (max 3)"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Shortcuts
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Shortcuts", systemImage: "square.stack.3d.up")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            NavigationLink(destination: ShortcutsDetailView()) {
                                InfoRow(
                                    icon: "square.stack.3d.up",
                                    iconColor: .purple,
                                    title: "Shortcuts Integration",
                                    subtitle: "Use Eris throughout iOS",
                                    showChevron: true
                                )
                            }
                            .buttonStyle(SettingsRowButtonStyle())
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "mic",
                                iconColor: .purple,
                                title: "Siri Support",
                                subtitle: "\"Hey Siri, ask Eris...\""
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "bolt",
                                iconColor: .yellow,
                                title: "4 Quick Actions",
                                subtitle: "Chat, Summarize, Translate, Generate"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Tips
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Tips & Support", systemImage: "lightbulb")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            NavigationLink(destination: TipsDetailView()) {
                                InfoRow(
                                    icon: "lightbulb",
                                    iconColor: .yellow,
                                    title: "Pro Tips",
                                    subtitle: "Get the most out of Eris",
                                    showChevron: true
                                )
                            }
                            .buttonStyle(SettingsRowButtonStyle())
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            InfoRow(
                                icon: "exclamationmark.triangle",
                                iconColor: .orange,
                                title: "Downloads Need Wi-Fi",
                                subtitle: "MLX framework limitation"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            Button(action: {
                                if let url = URL(string: "https://discord.gg/nr2qpfzCsd") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                InfoRow(
                                    icon: "bubble.left.and.bubble.right",
                                    iconColor: .indigo,
                                    title: "Join Discord",
                                    subtitle: "Get help from the community",
                                    showChevron: true
                                )
                            }
                            .buttonStyle(SettingsRowButtonStyle())
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                }
                .padding(.vertical, 20)
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Documentation")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

// MARK: - Helper Views
struct InfoRow: View {
    let icon: String
    let iconColor: Color
    let title: String
    let subtitle: String
    var showChevron: Bool = false
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(iconColor)
                .frame(width: 28, height: 28)
                .background(iconColor.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            if showChevron {
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundStyle(.tertiary)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

// MARK: - Detail Views
struct ModelsDetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("AI models are the 'brains' that power Eris. Each model has different strengths, sizes, and capabilities.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal, 20)
                    
                    // Categories
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Model Categories")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            CategoryRow(
                                icon: "bubble.left.and.bubble.right",
                                title: "General Purpose",
                                models: "Llama 3.2, Qwen 2.5, Gemma 2, Phi 3.5",
                                color: .blue
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            CategoryRow(
                                icon: "brain",
                                title: "Reasoning",
                                models: "DeepSeek R1",
                                color: .purple
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Requirements
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Download Requirements")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            RequirementRow(
                                icon: "wifi",
                                title: "Wi-Fi Required",
                                detail: "Downloads don't work on cellular",
                                isRequired: true
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            RequirementRow(
                                icon: "internaldrive",
                                title: "Storage Space",
                                detail: "2-8GB per model",
                                isRequired: true
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            RequirementRow(
                                icon: "iphone",
                                title: "Device Compatibility",
                                detail: "Check in Model Management",
                                isRequired: false
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Tips
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Choosing the Right Model")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            ModelTipRow(
                                icon: "hare",
                                title: "Start Small",
                                detail: "0.5B-1.5B models for faster responses"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            ModelTipRow(
                                icon: "brain",
                                title: "Go Big for Quality",
                                detail: "3B+ models for better answers"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            ModelTipRow(
                                icon: "globe",
                                title: "Multilingual",
                                detail: "Qwen models support many languages"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            ModelTipRow(
                                icon: "graduationcap",
                                title: "Complex Reasoning",
                                detail: "DeepSeek R1 for advanced tasks"
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            ModelTipRow(
                                icon: "exclamationmark.triangle",
                                title: "Compatibility",
                                detail: "Check warnings before download"
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                    
                    // Memory & Performance
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Memory & Performance")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 0) {
                            RequirementRow(
                                icon: "memorychip",
                                title: "RAM Usage",
                                detail: "Models use 2-8GB RAM",
                                isRequired: false
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            RequirementRow(
                                icon: "gauge",
                                title: "GPU Cache",
                                detail: "Auto-adjusted per device",
                                isRequired: false
                            )
                            
                            Divider()
                                .padding(.leading, 64)
                            
                            RequirementRow(
                                icon: "exclamationmark.triangle",
                                title: "Memory Warnings",
                                detail: "Switch to smaller model",
                                isRequired: true
                            )
                        }
                        .background(Color(UIColor.secondarySystemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 20)
                    }
                }
                .padding(.vertical, 20)
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("AI Models")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ChatFeaturesDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Basic Controls
                VStack(alignment: .leading, spacing: 12) {
                    Text("Basic Controls")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ChatFeatureRow(icon: "plus.circle", title: "New Chat", detail: "Tap + button")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "cpu", title: "Switch Model", detail: "Tap model name in toolbar")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "stop.circle", title: "Stop Generation", detail: "Tap stop while generating")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "arrow.down.circle", title: "Scroll to Bottom", detail: "Tap when button appears")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Message Actions
                VStack(alignment: .leading, spacing: 12) {
                    Text("Message Actions")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ChatFeatureRow(icon: "doc.on.doc", title: "Copy Message", detail: "Long press any message")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "clock", title: "Show Timestamp", detail: "Tap any message")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "hand.tap", title: "Haptic Feedback", detail: "Feel AI thinking")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Chat Management
                VStack(alignment: .leading, spacing: 12) {
                    Text("Chat Management")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ChatFeatureRow(icon: "pin", title: "Pin Chat", detail: "Long press chat in list")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "trash", title: "Delete Chat", detail: "Long press to delete")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "star", title: "Max 3 Pins", detail: "Pinned chats stay on top")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "text.alignleft", title: "Auto Title", detail: "Generated from first message")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Special Features
                VStack(alignment: .leading, spacing: 12) {
                    Text("Special Features")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ChatFeatureRow(icon: "chevron.left.forwardslash.chevron.right", title: "Code Highlighting", detail: "100+ languages supported")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "doc.text", title: "Markdown", detail: "Full formatting support")
                        Divider().padding(.leading, 64)
                        ChatFeatureRow(icon: "keyboard", title: "iPad Keyboard", detail: "⌘+Return to send")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
            }
            .padding(.vertical, 20)
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationTitle("Chat Features")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ShortcutsDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("Use Eris's AI capabilities throughout iOS without opening the app.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 20)
                
                // Available Shortcuts
                VStack(alignment: .leading, spacing: 12) {
                    Text("Available Shortcuts")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ShortcutRow(
                            icon: "bubble.left.and.bubble.right",
                            title: "Quick Chat",
                            detail: "Ask questions, continue conversations",
                            color: .blue
                        )
                        Divider().padding(.leading, 64)
                        ShortcutRow(
                            icon: "doc.text.magnifyingglass",
                            title: "Summarize",
                            detail: "Get quick summaries of any text",
                            color: .orange
                        )
                        Divider().padding(.leading, 64)
                        ShortcutRow(
                            icon: "globe",
                            title: "Translate",
                            detail: "Translate between 12+ languages",
                            color: .green
                        )
                        Divider().padding(.leading, 64)
                        ShortcutRow(
                            icon: "pencil.and.outline",
                            title: "Generate",
                            detail: "Create emails, messages, ideas",
                            color: .purple
                        )
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Setup Steps
                VStack(alignment: .leading, spacing: 12) {
                    Text("How to Set Up")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        StepRow(number: 1, text: "Open Shortcuts app")
                        Divider().padding(.leading, 64)
                        StepRow(number: 2, text: "Search for 'Eris'")
                        Divider().padding(.leading, 64)
                        StepRow(number: 3, text: "Add shortcuts you want")
                        Divider().padding(.leading, 64)
                        StepRow(number: 4, text: "Customize parameters")
                        Divider().padding(.leading, 64)
                        StepRow(number: 5, text: "Add to Siri (optional)")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Parameters
                VStack(alignment: .leading, spacing: 12) {
                    Text("Common Parameters")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        ShortcutParameterRow(
                            icon: "square.and.arrow.down",
                            title: "Save Chat",
                            detail: "Keep conversation history in the app"
                        )
                        
                        Divider()
                            .padding(.leading, 64)
                        
                        ShortcutParameterRow(
                            icon: "cpu",
                            title: "Model Name",
                            detail: "Type 'Llama', 'Qwen', etc. or leave empty"
                        )
                        
                        Divider()
                            .padding(.leading, 64)
                        
                        ShortcutParameterRow(
                            icon: "text.alignleft",
                            title: "Response Style",
                            detail: "Normal, Concise, Detailed, Creative, Professional"
                        )
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
            }
            .padding(.vertical, 20)
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationTitle("Shortcuts")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TipsDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Performance
                VStack(alignment: .leading, spacing: 12) {
                    Text("Performance Tips")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        TipRow(icon: "hare", title: "Use smaller models", detail: "0.5B-1.5B for speed")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "xmark.circle", title: "Close other apps", detail: "Free up memory")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "battery.100", title: "Plug in for long chats", detail: "AI uses battery")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Troubleshooting
                VStack(alignment: .leading, spacing: 12) {
                    Text("Common Issues")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        TipRow(icon: "wifi.exclamationmark", title: "Download fails", detail: "Must use Wi-Fi")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "exclamationmark.triangle", title: "Memory warning", detail: "Try smaller model")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "arrow.clockwise", title: "App crashes", detail: "Restart device")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Best Practices
                VStack(alignment: .leading, spacing: 12) {
                    Text("Best Practices")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        TipRow(icon: "questionmark.circle", title: "Be specific", detail: "Clear questions get better answers")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "text.bubble", title: "Give context", detail: "Continue conversations smoothly")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "doc.on.doc", title: "Copy important info", detail: "Save responses before closing")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "pin", title: "Pin favorites", detail: "Keep 3 most-used chats handy")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "bolt", title: "Use Shortcuts", detail: "Quick AI tasks anywhere")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "wifi", title: "Download on Wi-Fi", detail: "Save time and avoid errors")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
                
                // Device Requirements
                VStack(alignment: .leading, spacing: 12) {
                    Text("Device Requirements")
                        .font(.headline)
                        .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        TipRow(icon: "iphone", title: "iPhone", detail: "A13+ chip, 6GB+ RAM")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "ipad", title: "iPad", detail: "M1+ chip required")
                        Divider().padding(.leading, 64)
                        TipRow(icon: "xmark.icloud", title: "No Simulator", detail: "Physical device only")
                    }
                    .background(Color(UIColor.secondarySystemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 20)
                }
            }
            .padding(.vertical, 20)
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationTitle("Tips & Tricks")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Row Components
struct CategoryRow: View {
    let icon: String
    let title: String
    let models: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(color)
                .frame(width: 28, height: 28)
                .background(color.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(models)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct RequirementRow: View {
    let icon: String
    let title: String
    let detail: String
    let isRequired: Bool
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(isRequired ? .red : .orange)
                .frame(width: 28, height: 28)
                .background((isRequired ? Color.red : Color.orange).opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct ChatFeatureRow: View {
    let icon: String
    let title: String
    let detail: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.blue)
                .frame(width: 28, height: 28)
                .background(Color.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct ShortcutRow: View {
    let icon: String
    let title: String
    let detail: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(color)
                .frame(width: 28, height: 28)
                .background(color.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct StepRow: View {
    let number: Int
    let text: String
    
    var body: some View {
        HStack(spacing: 12) {
            Text("\(number)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 28, height: 28)
                .background(Circle().fill(Color.accentColor))
            
            Text(text)
                .font(.body)
                .foregroundStyle(.primary)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct TipRow: View {
    let icon: String
    let title: String
    let detail: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.teal)
                .frame(width: 28, height: 28)
                .background(Color.teal.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct ShortcutParameterRow: View {
    let icon: String
    let title: String
    let detail: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.indigo)
                .frame(width: 28, height: 28)
                .background(Color.indigo.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

struct ModelTipRow: View {
    let icon: String
    let title: String
    let detail: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.green)
                .frame(width: 28, height: 28)
                .background(Color.green.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.primary)
                
                Text(detail)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .contentShape(Rectangle())
    }
}

// MARK: - Preview
#Preview {
    DocumentationView()
}