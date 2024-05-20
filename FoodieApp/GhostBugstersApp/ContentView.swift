//
//  ContentView.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 19/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var showWelcomeScreen = true
    
    @Environment(\.modelContext) var modelContext
    @Query var viewModel: [Food]

    var body: some View {
        
        TabView {
            ParentDailyTipsView()
                .tabItem { Image(systemName: "sparkles")
                    Text("Daily Tips") }
            CulinaryGemsView()
                .tabItem { Image(systemName: "fork.knife")
                    Text("Culinary Gems") }
        }.accentColor(Color(hex: 0x315771))
        
        .sheet(isPresented: $showWelcomeScreen) {
            WelcomeScreen(showWelcomeScreen: $showWelcomeScreen)
                .interactiveDismissDisabled()
        }
        .onAppear{
            for food in FoodViewModel().foods{
                modelContext.insert(food)
            }
        }
    }
}

#Preview {
    ContentView()
}
