//
//  Obstacle.swift
//  ColorBee
//
//  Created by Riad Korimbacus on 28/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import SpriteKit

class Obstacle: SKNode {
    
    func miseEnPlace() {
        
        guard let path = creerForme() else { return }
        for x in (0...3) {
            let quart = SKShapeNode(path: path.cgPath)
            quart.fillColor = COULEURS[x]
            quart.strokeColor = COULEURS[x]
            quart.zRotation = CGFloat(Double.pi / 2) * CGFloat(x)
            
            let body = SKPhysicsBody(polygonFrom: path.cgPath)
            body.categoryBitMask = MASK_OBSTACLE
            body.collisionBitMask = MASK_PERSONNE
            body.contactTestBitMask = MASK_JOUEUR
            body.affectedByGravity = false
            quart.physicsBody = body
            addChild(quart)
        }
        
    }
    
    func creerForme() -> UIBezierPath? {
        
        return nil
    }

}
