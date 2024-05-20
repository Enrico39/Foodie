//
//  ImageViews.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 21/10/23.
//

import SwiftUI

struct FoodTypeIcon: View{
    
    @State var imageName: String
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 35)
            
    }
}

struct ParticleView: View{
    let position: CGPoint
    let animationDuration: Double
    
    
    @State private var isAnimating = false
    var body: some View{
        Circle()
            .fill(Color.gray)
            .frame(width: 10,height: 10)
            .opacity(isAnimating ? 0 : 1)
            .position(position)
            .onAppear{
                withAnimation(Animation.linear(duration: animationDuration).repeatForever(autoreverses: false)){
                    isAnimating = true
                }
            }
    }
}
