//
//  ButtonViews.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 21/10/23.
//

import SwiftUI

struct FoodTypeToggleButton: View {
    
    let foodTypes = FoodViewModel().foodTypes
    
    var type: String
    
    var index: Int
    
    @Binding var isSelected: [Bool]
    
    @Binding var selectedFoodTypes: Set<String>
    
    
    
    var body: some View {
        Button(action:{
            let wowIconIndex = foodTypes.index(before: foodTypes.endIndex)
            let wowName = foodTypes[wowIconIndex]
            if type == wowName {
                if !isSelected[wowIconIndex]{
                    
                    isSelected[index].toggle()
                    selectedFoodTypes.removeAll()
                    for index in 0..<wowIconIndex {
                        isSelected[index] = false
                    }
                }
                    
            } else {
                
                isSelected[index].toggle()
                
                
                if isSelected[index] {
                    selectedFoodTypes.insert(type)
                    if isSelected[wowIconIndex] == true {
                        isSelected[wowIconIndex].toggle()
                    }
                } else{
                    selectedFoodTypes.remove(type)
                }
                
                if selectedFoodTypes.isEmpty {
                    if isSelected[wowIconIndex] == false {
                        isSelected[wowIconIndex].toggle()
                    }
                }
            }
            
        }){
            Image(isSelected[index] ? "\(type)" : "\(type)_outline")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
            
        }
    }
}

struct ColorChangingButtonStyle: ButtonStyle{
    let pressedColor: Color
    let releaseColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0).fill(configuration.isPressed ? pressedColor : releaseColor).frame(width: 300,height: 70)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        configuration.label
        }
            

    }
}


