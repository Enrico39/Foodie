//
//  DiscoverView.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 20/10/23.
//

import SwiftUI
import SwiftData

struct DiscoverView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var viewModel: [Food] 
    
    var body: some View {
        let foodByType = Dictionary(grouping: viewModel, by: { $0.type })
        
        ScrollView {
                
                // For each dish type
                ForEach(foodByType.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                    
                    // Add a Subtitle to every food
                    HStack{
                        Text(key)
                            .font(Font.system(size: 23))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Spacer()
                    }.padding(.leading)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 20) {
                            
                            // For each dish
                            ForEach(value, id: \.id) { dish in
                                
                                NavigationLink(destination: DetailsView(food: dish)) {
                                    VStack(alignment: .leading, spacing: 16.0) {
                                        // Apply the heart animation to the image and place it at the top right corner
                                        Image(dish.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 170, height: 140)
                                            .clipped()
                                            .padding()
                                            .heartAnimation(food: dish)
                                            
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
                                }.foregroundColor(.black)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }


#Preview {
    DiscoverView()
}
