//
//  ContentView.swift
//  GhostBugstersApp
//
//  Created by Vincenza Loreto on 20/10/23.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Welcome to  \n      Naples!")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                
            }
            .padding(.bottom, 70)
            
            
            
            VStack (alignment:.leading)
            {
                
                HStack{
                    Image(systemName: "fork.knife")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                        .foregroundColor(Color(hex: 0x315771))
                        .padding()
                    
                    
                    VStack (alignment:.leading){
                        Text("Discover")
                            .font(.title)
                            .bold()
                        Text("Discover Naples froma gastronomic point of view of the city.")
                    }
                    
                }
                    
                    
                    
                    
                    
                    
                    VStack (alignment:.leading) {
                        
                        HStack {
                            Image(systemName: "sparkles")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 60)
                                .foregroundColor(Color(hex: 0x315771))
                                .padding()
                            
                            VStack (alignment:.leading){
                                Text("Get surprised!")
                                    .font(.title)
                                    .bold()
                                Text("You will get daily recommendations to taste the most traditional dishes of Naples.")
                            }
                        }
                                
                                
                                
                                
                                VStack (alignment:.leading){
                                    
                                    HStack {
                                    Image(systemName: "brain.head.profile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                .frame(width: 60)
                                .foregroundColor(Color(hex: 0x315771))
                                .padding()
                                
                                  
                                
                              
                                    VStack  (alignment:.leading){
                                        Text("Know more")
                                            .font(.title)
                                            .bold()
                                        Text("Learn about Neapolitan Culture by reading the origin or a curiosity about each food.")
                                    
                                    }
                                        
                                }
                                    NavigationStack {
                                        VStack{
                                            CustomButton()
                                        }
                                    }
                            }
                        }
                    }
                }
            }
        }
    


#Preview {
        Intro()
    }
    
