//
//  CulinaryGemsView.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 22/10/23.
//

import SwiftUI
import SwiftData
import CoreData

struct CulinaryGemsView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var viewModel: [Food] = FoodViewModel().foods
    
    @State private var selectedView = 0
        
    var body: some View {
        NavigationView {
            VStack {
                Picker("", selection: $selectedView) {
                    Text("All").tag(0)
                    Text("Favourites").tag(1)
                }
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                if (selectedView == 0) {
                    Discover()
                } else {
                    Favourites()
                }
            }.navigationTitle("Culinary Gems")
                .onAppear() { addSamples() }
                
                // Button to delete all data (only if it's necessary)
                //.toolbar {
                //    Button("Add Samples", action: addSamples)
                //}
        }
    }
    
    // Initialize the Segmented Control
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color(hex: 0x315771))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    // Function to add data
    func addSamples(){
        let foodArray = FoodViewModel().foods
            
        for dish in foodArray {
            if shouldAddData(title: dish.name) {
                modelContext.insert(dish)
            }
        }
    }
    
    // Should I add this data?
    func shouldAddData(title: String) -> Bool {
        //return !viewModel.contains(where: { $0.name == title })
        return !viewModel.contains(where: { $0.name == title })
    }
    
    // Function to delete all data (only if it's necessary
    func eliminar () {
        for destination in viewModel {
            modelContext.delete(destination)
        }
        do {
            try modelContext.save()
        } catch {
            print("Error saving context: \(error)")
        }
    }
}

struct CulinaryGems: PreviewProvider {
    static var previews: some View {
        CulinaryGemsView()
    }
}

// All dishes Page
struct Discover: View {
    @State private var selectedView = 0
    var body: some View {
        ZStack {
            DiscoverView()
        }
    }
}

// Favorites Page
struct Favourites: View {
    @State private var selectedView = 0
    var body: some View {
        ZStack {
            FavouritesView()
        }
    }
}

#Preview {
    CulinaryGemsView()
}
