//
//  DrawView.swift
//  Assignment3
//
//  Created by Tima on 2018-05-21.
//  Copyright © 2018 Tima. All rights reserved.
//

import UIKit

class drawView: UIView {
    
    var lineColor: UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var startPoint: CGPoint!
    var touchPoint: CGPoint!
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        lineColor = UIColor.blue
        lineWidth = 15
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let point = touch?.location(in: self){
        startPoint = point
        
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        if let point = touch?.location(in: self){
        touchPoint = point
       
        }
    
        path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        startPoint = touchPoint
        
        draw()
    
        }

    func draw() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
}
