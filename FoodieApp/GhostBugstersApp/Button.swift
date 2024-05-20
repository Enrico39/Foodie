//
//  Button.swift
//  GhostBugstersApp
//
//  Created by Vincenza Loreto on 21/10/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: ParentDailyTipsView()){
                Text("Let's go!")
                    .frame(maxWidth: 250)
                    .frame(width: 200, height: 60)
                    .background(Color(hex: 0x315771))
                    .foregroundColor(.white)
                    .cornerRadius(9.0)
                 
            }
            
        }
    }
}
    
    struct CustomButton_Previews: PreviewProvider {
        static var previews: some View {
            CustomButton()
        }
    }
