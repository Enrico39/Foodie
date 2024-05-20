//
//  Introduction.swift
//  GhostBugstersApp
//
//  Created by Ricardo Rodriguez on 28/10/23.
//

import SwiftUI

struct WelcomeScreen: View {
    @AppStorage("hasLaunchedBefore") private var hasLaunchedBefore = false

    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Naples!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
                
            VStack(spacing: 24) {
                FeatureCell(image: "fork.knife", title: "Discover", subtitle: "Discover Naples from gastronomic point of view of the city.", color: .green)
                    
                FeatureCell(image: "sparkles", title: "Get surprised!", subtitle: "You will get daily recommendations to taste the most traditional dishes of Naples.", color: .blue)
                    
                FeatureCell(image: "brain.head.profile", title: "Know more", subtitle: "Learn about Neapolitan Culture by reading the origin or a curiosity about each food.", color: .red)
            }
            .padding(.leading)
                
            Spacer()
            Spacer()
                
            Button(action: { self.showWelcomeScreen = false; self.hasLaunchedBefore = true }) {
                    HStack {
                        Spacer()
                        Text("Let's go!")
                        Spacer()
                    }
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                //.frame(width: 350, height: 50)
                .background(Color(hex: 0x315771))
                .cornerRadius(15)
                .foregroundColor(.white)
                .cornerRadius(9.0)
        }
        .padding()
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(showWelcomeScreen: .constant(true))
    }
}
