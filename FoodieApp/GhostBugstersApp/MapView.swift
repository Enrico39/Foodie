//
//  SwiftUIView.swift
//  GhostBugstersApp
//
//  Created by Enrico Madonna on 21/10/23.
//

import SwiftUI
import MapKit //Kit for the map

//this View should be called in the detailView of a food writing MapView() and passing the parameters(not working now)
struct MapView: View {
    
    var food:Food
    var body: some View {
        
        ZStack (alignment:.topTrailing){
            
    //Map inizialization
            
            let adjustedCoordinate = CLLocationCoordinate2D(latitude: food.latitude, longitude: food.longitude - 0.0023) // Applica l'offset

            Map (initialPosition: .region(MKCoordinateRegion(center: adjustedCoordinate, span: (MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))))){
                Marker("\(food.placeName)", coordinate: CLLocationCoordinate2D(latitude: food.latitude, longitude: food.longitude ))
                    .tint(Color(red: 0.193, green: 0.341, blue: 0.445))
                
                /* Annotation("Columbia University", coordinate: .columbiaUniversity) {
                 ZStack {
                 RoundedRectangle(cornerRadius: 5)
                 .fill(Color.teal)
                 Text("asus")
                 .padding(5)
                 }
                 }*/
            }
            .clipShape(RoundedRectangle(cornerRadius:35.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .frame(width: 340, height: 140)
            
    //The blue rectangle
            RoundedRectangle(cornerRadius: 35.0, style: .continuous)
                .stroke(Color(red: 0.193, green: 0.341, blue: 0.445), lineWidth: 3)
                .frame(width: 340, height: 140)
            
    //This Vstack contains the working share to map button
            VStack(alignment:.leading) {
                ZStack {
                    Circle()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.white)
                    
                    Button(action:  { let destination = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: food.latitude, longitude: food.longitude)))
                        destination.name = "\(food.placeName)"
                        MKMapItem.openMaps(with: [destination], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
                    }, label: {
                        Image(systemName: "square.and.arrow.up.circle.fill")
                            .resizable()
                            .foregroundColor(Color(red: 0.193, green: 0.341, blue: 0.445))
                            .frame(width: 30,height: 30)
                    })
                }
            }
        }
    }
}

#Preview {
    let food = Food( id:2, name: "Neapolitan Coffe", type: "Pizza",
                     image: "coffee", isFav: false,
                     
                     preferenceTypes: ["coffee","dessert"],
                     
                     desc: "Coffee is a widely loved drink made from roasted coffee beans. It's known for its rich flavor and the energy boost it provides when you drink it",
                     placeName: "Gran Caffè Gambrinus",
                     latitude: 40.83702903848648, longitude: 14.248496518144602,
                     couriosity: "The tradition of \"caffè sospeso,\" or \"suspended coffee,\" originated in Naples. The presence of coffee in Neapolitan culture dates back to the early 19th century, thanks to the first itinerant coffee vendors who roamed the city, calling out to the crowd to sell coffee or milk. They played a significant role in popularizing this beverage in the city.The custom of paying for an extra coffee has much older origins. History tells us that it began to gain traction during a critical time in Italian society, during World War II. Anyone who could afford it would pay for their coffee and then add another one to be \"suspended,\" intended for those who couldn't afford it. According to Neapolitan lore, this act of solidarity originated from disputes among friends at the bar when it came time to settle the bill. In the uncertainty of who should actually pay for the espressos, they would end up paying for one that had not been consumed, leaving it as a gift for a stranger.",
                    isDrink: true, isBreakfast: false, isMeal: false, isSweet: false, isSalt: false, isWow: true)
    return MapView(food:food)
}



//some radom location used to try the map. we wont need them
extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
}
