//
//  GameScene.swift
//  StuffedAnimalMortalKombat
//
//  Created by Aimee Bragg on 6/9/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import SpriteKit

class GameScene: SKScene{
    
    let playerCount: CGFloat = 8
    let statsPadding: CGFloat = 20
    
    var playerStatsWidth: CGFloat!
    
    
    override func didMoveToView(view: SKView) {
        
        
        
        playerStatsWidth = (view.bounds.width - (statsPadding * (playerCount + 1))) / playerCount
        
  
    }

    
    var sunRotation: Double = 0
   
    override func update(currentTime: CFTimeInterval) {
        
        
        if let sun = childNodeWithName("sun") {
            
        //    let radius = DistanceBetweenPoint1(sun.position, andPoint2: view!.center)
            
            let radius: CGFloat = 700
            
            sunRotation = sunRotation < 360 ? sunRotation + 1 : 0
            
            let angle = CGFloat(DegreesToRadians(sunRotation))
            
            sun.position.x = position.x + radius * cos(angle) + view!.center.x
            sun.position.y = position.y + radius * sin(angle) + view!.center.y
        }
        
    }
}
