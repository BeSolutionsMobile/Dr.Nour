//
//  SwiftDisclosureIndicator.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/21/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class SwiftDisclosureIndicator: UIView {
    
    
    @IBInspectable var color = UIColor.red {
        didSet {
            setNeedsDisplay()
        }
    }
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let x = self.bounds.maxX
        let y = self.bounds.midY
        let R = CGFloat(4.5)
//        CGContextMoveToPoint(context, x - R, y - R)
//        CGContextAddLineToPoint(context, x, y)
//        CGContextAddLineToPoint(context, x - R, y + R)
//        CGContextSetLineCap(context, CGLineCap.Square)
//        CGContextSetLineJoin(context, CGLineJoin.Miter)
        context!.setLineWidth(2)
        color.setStroke()
        context!.strokePath()
    }
    
    
    
    
    
    
    
    
}
