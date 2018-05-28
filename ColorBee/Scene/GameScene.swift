//
//  GameScene.swift
//  ColorBee
//
//  Created by Riad Korimbacus on 28/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let cameraNode = SKCameraNode()
    let sol = Sol()
    var joueur: Joueur?
    
    override func didMove(to view: SKView) {
        
        physicsWorld.gravity.dy = -5
        
        camera = cameraNode
        addChild(cameraNode)
        cameraNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        sol.miseEnPlace(scene: self)
        addChild(sol)
    
        ajouterJoueur()
    }
    
    func ajouterJoueur() {
        
        joueur = Joueur(circleOfRadius: 25)
        joueur?.miseEnPlace(scene: self)
        if joueur != nil {
            addChild(joueur!)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if joueur != nil {
            joueur?.sauter()
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
       
    }
}
