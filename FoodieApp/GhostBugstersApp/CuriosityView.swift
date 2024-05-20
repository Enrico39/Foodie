//
//  CuriosityView.swift
//  GhostBugstersApp
//
//  Created by Vincenza Loreto on 23/10/23.
//

import SwiftUI

struct CuriosityView: View {
    
    @State var food:Food
    
    var body: some View {
                    
            VStack(spacing: 20) {
                Spacer().frame(height: 60)
                
                Image(food.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 140)
                    .clipped()
                
                
                JustifiedText(food.couriosity)
                    .padding()
                
                /*
                 Text("The sfogliatella dessert originated in the Amalfi Coast (Campania) around 1600.")
                 .multilineTextAlignment(.center)
                 .padding(.bottom, 20)
                 
                 Image("SH_sfogliatella_riccia")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 276, height: 184)
                 .clipShape(RoundedRectangle(cornerRadius: 21))
                 .overlay(
                 RoundedRectangle(cornerRadius: 21)
                 .stroke(Color.black, lineWidth: 1)
                 )
                 Text("In the Santa Rosa convent, a nun named Clotilde discovered leftover semolina and innovatively combined it with ricotta, dried fruit, and a lemon liqueur. She baked this mixture inside a special dough, giving it a shape reminiscent of a monk's hood. This creation, born out of resourcefulness, became a beloved treat in the convent and its recipe was passed down over the years.")
                 .padding(.bottom, 20)
                 .multilineTextAlignment(.center)
                 .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                 */
                
                Spacer()
            }
        
        .padding()
        .background(Color(hex: 0xFCFCFC))
    }
}

#Preview {
    let food = Food( id:2, name: "Neapolitan Coffe", type: "Pizza",
                     image: "coffee", isFav: false,
                     
                     preferenceTypes: ["coffee","dessert"],
                     
                     desc: "Coffee is a widely loved drink made from roasted coffee beans. It's known for its rich flavor and the energy boost it provides when you drink it.",
                     placeName: "Gran Caffè Gambrinus",
                     latitude: 40.83702903848648, longitude: 14.248496518144602,
                     couriosity: "The tradition of \"caffè sospeso,\" or \"suspended coffee,\" originated in Naples. The presence of coffee in Neapolitan culture dates back to the early 19th century, thanks to the first itinerant coffee vendors who roamed the city, calling out to the crowd to sell coffee or milk. \n\nThey played a significant role in popularizing this beverage in the city. The custom of paying for an extra coffee has much older origins. History tells us that it began to gain traction during a critical time in Italian society, during World War II. \n\nAnyone who could afford it would pay for their coffee and then add another one to be \"suspended,\" intended for those who couldn't afford it. According to Neapolitan lore, this act of solidarity originated from disputes among friends at the bar when it came time to settle the bill. \n\nIn the uncertainty of who should actually pay for the espressos, they would end up paying for one that had not been consumed, leaving it as a gift for a stranger.",
                    isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: false, isWow: true)
    return DetailsView(food:food)
    
    CuriosityView(food: food)
}
