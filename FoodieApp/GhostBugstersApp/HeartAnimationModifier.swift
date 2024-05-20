//
//  HeartAnimationModifier.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 22/10/23.
//

import Foundation
import SwiftUI
import SwiftData

struct HeartAnimationModifier: ViewModifier {
    @Bindable var food: Food

    func body(content: Content) -> some View {
        ZStack(alignment: .topTrailing) {
            content

            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)){
                    food.isFav.toggle()
                }
            }) {
                Image(systemName: food.isFav ? "heart.fill" : "heart")
                    .foregroundColor(food.isFav ? .red : .gray)
                    .font(.system(size: 24))
            }
            .frame(width: 30, height: 30)
            .padding(8)
        }
    }
}

extension View {
    func heartAnimation(food: Food) -> some View {
        self.modifier(HeartAnimationModifier(food: food))
    }
}

