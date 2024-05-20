//
//  SteamScene.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 28/10/23.
//
import Foundation
import SpriteKit


class AnimatedSteamScene: SKScene{
    
    private var steamNode: SKSpriteNode!
    
    override init(size: CGSize){
        super.init(size:size)
        backgroundColor = .clear
        
       
    }
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        
        // Generate the frame names
//        let frameNames = (0...119).map{String(format: "Steam%03d", $0)}
//        let textures = frameNames.compactMap{SKTexture(imageNamed: $0) }
//
//
//        let animation = SKAction.animate(with:textures, timePerFrame: 1.0/30) // 30fps
//        let loop = SKAction.repeat(animation, count: 1)
//
//        steamNode = SKSpriteNode(texture: textures.first)
//
//        steamNode.position = CGPoint(x: size.width/2, y: size.height*0.8)
//        steamNode.blendMode = .alpha
//        steamNode.alpha = 1
//        steamNode.zPosition = 1
//        steamNode.setScale(1.0)
//        steamNode.run(loop)
//        addChild(steamNode)
        
        if let steamEmitter = SKEmitterNode(fileNamed: "SteamParticles"){
            steamEmitter.position = CGPoint(x: size.width/2, y: size.height*0.44)
            
            addChild(steamEmitter)
        }
        
            
        
        
        
    }
}
