//
//  Ghost…AppApp.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 19/10/23.
//

import SwiftUI
import SwiftData

@main
struct GhostBugstersAppApp: App {
    @AppStorage("hasLaunchedBefore") private var hasLaunchedBefore = false
    
    @Environment(\.modelContext) var modelContext
    @Query var viewModel: [Food]
    
    
    let modelContainer: ModelContainer
    
    init() {
        do {
            modelContainer = try ModelContainer(for: Food.self)
        } catch {
            fatalError("Could not initialize ModelContainer")
        }
    }

    var body: some Scene {
        WindowGroup {
            if !hasLaunchedBefore {
                ContentView().preferredColorScheme(.light)
            } else {
                TabView {
                    ParentDailyTipsView()
                        .preferredColorScheme(.light)
                        .tabItem { Image(systemName: "sparkles")
                            Text("Daily Tips") }
                    CulinaryGemsView()
                        .preferredColorScheme(.light)
                        .tabItem { Image(systemName: "fork.knife")
                            Text("Culinary Gems") }
                }.accentColor(Color(hex: 0x315771))
                    .preferredColorScheme(.light)
            }
        }.modelContainer(modelContainer)
        
    }
}
