//
//  PlayerStats.swift
//  StuffedAnimalMortalKombat
//
//  Created by Aimee Bragg on 6/11/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

@IBDesignable class PlayerStats: UIView {
    
    @IBInspectable var healthPoints: CGFloat = 60
    @IBInspectable var energyPoints: CGFloat = 80
    
    @IBInspectable var healthColor: UIColor = UIColor.greenColor()
    @IBInspectable var energyColor: UIColor = UIColor.purpleColor()
    
    @IBInspectable var lightHealth: UIColor = UIColor.lightGrayColor()
    @IBInspectable var lightEnergy: UIColor = UIColor.lightGrayColor()
    
    
    
    override func drawRect(rect: CGRect) {
        
        // piece of paper
        let context = UIGraphicsGetCurrentContext()
        
        // line width or bar width
        let lineWidth: CGFloat = 10
        CGContextSetLineWidth(context, lineWidth)
        
        CGContextFillPath(context)
        
        CGContextSetBlendMode(context, kCGBlendModeNormal)
        
        
        // add bar rounded ends
        addDotAtDegreesWithColorAndContext(-135, color: lightHealth, context: context)
        addDotAtDegreesWithColorAndContext(135, color: lightHealth, context: context)
        addDotAtDegreesWithColorAndContext(-45, color: lightEnergy, context: context)
        addDotAtDegreesWithColorAndContext(45, color: lightEnergy, context: context)
        
        
        // add current health
        CGContextSetBlendMode(context, kCGBlendModeSourceIn)
        let healthY = (1.0 - (healthPoints / 100)) * rect.height
        
        healthColor.set()

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    }
}
