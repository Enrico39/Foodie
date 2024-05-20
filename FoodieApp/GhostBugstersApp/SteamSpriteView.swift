//
//  SteamSpriteView.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 28/10/23.
//

import SwiftUI
import SpriteKit

//struct SteamSpriteView: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> SKView{
//        let view = SKView()
////        view.backgroundColor = .clear
////        view.ignoresSiblingOrder = true
////        view.showsFPS = true
////        view.showsNodeCount = true
//
//        return view
//    }
//
//    func updateUIView(_ view: SKView, context: Context){
//        print("SteamSpriteView size: \(view.bounds.size)")
//        let scene = AnimatedSteamScene(size: view.bounds.size)
//        view.presentScene(scene)
//    }
//}

struct SteamSpriteView: View{
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    // define scene
    var scene: SKScene{
       
        let scene = AnimatedSteamScene(size: CGSize(width: screenWidth, height: screenHeight))
        
        
//        scene.blendMode = .alpha
//        scene.backgroundColor = .clear
//        scene.scaleMode = .fill
        
        return scene
    }
    
    
    var body: some View{
            SpriteView(scene:scene, options: [.allowsTransparency])
    }
}


#Preview {
    SteamSpriteView()
}
