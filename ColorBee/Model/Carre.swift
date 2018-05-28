//
//  Carre.swift
//  ColorBee
//
//  Created by Riad Korimbacus on 28/05/2018.
//  Copyright © 2018 Riad Korimbacus. All rights reserved.
//

import SpriteKit

class Carre: Obstacle {
    
    override func miseEnPlace() {
        super.miseEnPlace()
    }
    
    override func creerForme() -> UIBezierPath? {
        return UIBezierPath(roundedRect: CGRect(x: -200, y: -200, width: 400, height: 400), cornerRadius: 50)
    }
    
}
