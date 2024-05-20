//
//  FoodDetailedView.swift
//  GhostBugstersApp
//
//  Created by Enrico Madonna on 23/10/23.
//

import SwiftUI
import SwiftData
import MapKit


struct DetailsView: View {
    @Environment(\.modelContext) var modelContext

    @Query var vm: [Food]
    
    @State private var isSheetPresented = false

    @State var food:Food
    
    var body: some View {
        
        ZStack{
            Color(.white)
            
            VStack{
                HStack {
                    Text("\(food.name)")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Text("")
                        .heartAnimation(food: food)
                    
                    //Image(systemName: vm.contains(food) ? "heart.fill" : "heart")
                    //    .foregroundColor(.red)
                    //    .onTapGesture {
                    //    }.heartAnimation(food: food)
                    
                }
                //.heartAnimation(food: food)
                .padding()
                
                ZStack{
                    
                    MapView(food: food)
                        .padding(.trailing, -8)
                    HStack{
                        ZStack{
                            Circle()
                                .frame(width: 190, height: 170)
                                .foregroundColor(.white)
                            Circle()
                                .stroke(Color(red: 0.193, green: 0.341, blue: 0.445), lineWidth: 3)
                                .frame(width: 190, height: 170)
                                .padding(.leading, 2)
                            Image("\(food.image)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                }.padding(.leading, -1)
                    .padding(.trailing, -1)
                HStack{
                    Spacer()
                    if food.isDrink==true{
                        Image("drink")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .shadow(radius: 3)
                            .padding(.trailing, 10.0)
                    }
                    if food.isMeal==true{
                        Image("meal")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .shadow(radius: 3)
                            .padding(.trailing, 10.0)
                    }
                    if food.isSalt==true{
                        Image("fries")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .shadow(radius: 3)
                            .padding(.trailing, 10.0)
                    }
                    if food.isSweet==true{
                        Image("dessert")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .shadow(radius: 3)
                            .padding(.trailing, 10.0)
                    }
                    if food.isBreakfast==true{
                        Image("breakfast")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .shadow(radius: 3)
                            .padding(.trailing, 10.0)
                    }
                        
                }.padding(.horizontal, 20)
                                    
                JustifiedText(food.desc)
                    .frame(width: 340, height: 150)
                    .padding()
                    .padding(.trailing, 12)
                
                Text("You can find it in:")
                    .font(.system(size: 17))
                    .padding(.bottom, 1)
                Text("\(food.placeName)")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                    
                Button(action: { isSheetPresented.toggle()
                }, label: {
                    Text("Learn More")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 18).fill(Color(hex: 0x315771))
                            .frame(width: 200,height: 50))
                })
                .sheet(isPresented: $isSheetPresented) {
                    CuriosityView(food: food)
                }
                    
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline) // Clear the default title.
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
     let food = Food( id:2, name: "Neapolitan Coffe", type: "Pizza",
                      image: "coffee", isFav: false,
                      
                      preferenceTypes: ["coffee","dessert"],
                      
                      desc: "Coffee is a widely loved drink made from roasted coffee beans. It's known for its rich flavor and the energy boost it provides when you drink it.",
                      placeName: "Gran Caffè Gambrinus",
                      latitude: 40.83702903848648, longitude: 14.248496518144602,
                      couriosity: "The tradition of \"caffè sospeso,\" or \"suspended coffee,\" originated in Naples. The presence of coffee in Neapolitan culture dates back to the early 19th century, thanks to the first itinerant coffee vendors who roamed the city, calling out to the crowd to sell coffee or milk. They played a significant role in popularizing this beverage in the city.The custom of paying for an extra coffee has much older origins. History tells us that it began to gain traction during a critical time in Italian society, during World War II. Anyone who could afford it would pay for their coffee and then add another one to be \"suspended,\" intended for those who couldn't afford it. According to Neapolitan lore, this act of solidarity originated from disputes among friends at the bar when it came time to settle the bill. In the uncertainty of who should actually pay for the espressos, they would end up paying for one that had not been consumed, leaving it as a gift for a stranger.",
                     isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: false, isWow: true)
     return   DetailsView(food:food)
}

struct SheetView: View {
    var food:Food
    var body: some View {
        Text("\(food.couriosity)")
            .padding()
    }
}
