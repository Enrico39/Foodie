//
//  Info.swift
//  GhostBugstersApp
//
//  Created by Salvatore Capasso on 24/10/23.
//

import SwiftUI

struct Info: View {
    var body: some View {
        VStack {
            VStack {
                HStack(alignment: .center){
                    Image(systemName: "wand.and.stars.inverse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(hex: 0x315771))
                        .padding()
                        .frame(width: 60)
                    
                    Text("You can set your preferencies by tapping on filter icons:")
                        .frame(width: 260)
                }
            }
            
            VStack(alignment: .leading, spacing: -4){
                HStack(alignment: .center){
                    
                    Image("drink")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                        .frame(width: 60)
                    
                    Text("A **Drink** that hits the spot.")
                        .frame(width: 220,alignment: .leading)
                }
                HStack(alignment: .center){
                    
                    Image("coffee")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                    
                    Text("A comforting **breakfast**.")
                        .frame(width: 220,alignment: .leading)
                }
                HStack(alignment: .center){
                    
                    Image("meal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                    
                    Text("A **complete meal** that will make my day.")
                        .frame(width: 220,alignment: .leading)
                    
                }
                VStack (spacing: -40) {
                    HStack(alignment: .center){
                        
                        Image("dessert")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(width: 60)
                        
                        Text("**Sugary confection** that is pure happiness.")
                            .frame(width: 220,alignment: .leading)
                        
                    }
                }
                
                HStack(alignment: .center){
                    
                    Image("fries")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                    
                    Text("**Savory creation** that will make my taste buds sing.")
                        .frame(width: 220,alignment: .leading)
                    
                }
                HStack(alignment: .center){
                    
                    Image("wow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                    
                    Text("A satisfying bite, **whatever it may be**.")
                        .frame(width:220,alignment: .leading)
                    
                }
            }.padding(.leading, 70)
                .padding(.trailing, 40)
            
            VStack {
                HStack(alignment: .center){
                    Image(systemName: "sparkles")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(width: 60)
                        .foregroundColor(Color(hex: 0x315771))
                    Text("You come back every day at 7:00 AM for new **tips**")
                        .frame(width: 260)
                }
            }
        }.padding(.top, -80)
    }
}

#Preview {
    Info()
}
