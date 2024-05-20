//
//  FavouritesView.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 22/10/23.
//

import SwiftUI
import SwiftData

struct FavouritesView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query var favoriteDishes: [Food]
    
//     Filter the dishes based on the "isFavorite" property
    
    init(){
         _favoriteDishes = Query(filter: #Predicate {
             $0.isFav
            })
    }
    
    
    
    var body: some View {
        
        
     
        
        ScrollView {
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {

                // For each favorite dish
                ForEach(favoriteDishes) { dish in
                    
                    NavigationLink(destination: DetailsView(food: dish)) {
                        // Card
                        VStack(alignment: .leading, spacing: 16.0) {
                            // Apply the heart animation to the image and place it at the top right corner
                            Image(dish.image)
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: 170, height: 140)
                                .clipped()
                                .heartAnimation(food: dish) // Pass the binding to isFav
                            
                            // Food name
                            VStack(alignment: .leading) {
                                Text(dish.name)
                                    .font(.headline)
                                // Food type
                                HStack(spacing: 5.0) {
                                    Image(systemName: "fork.knife")
                                    Text(dish.type)
                                }
                                .foregroundColor(.gray)
                                .padding(.bottom, 16)
                            }
                            .padding(.horizontal, 8)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 24.0))
                        .shadow(radius: 2)
                        .padding(.horizontal, 8)
                    }.foregroundColor(.black)
                        .animation(.easeInOut)
                    
                        
                }
            }
            .padding(16)
        }
    }
    
    func removeDish(at offsets: IndexSet) {
        
    }
}

#Preview {
    FavouritesView()
}
