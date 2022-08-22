//
//  AnimationView.swift
//  SwiftUI-CAEmitterLayer
//
//  Created by JarvanSun on 2022/8/22.
//

import UIKit

class AnimationView: UIView {
    private var emitterLayer: CAEmitterLayer = CAEmitterLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        emitterLayer.renderMode = .additive
        emitterLayer.preservesDepth = true
        let cell = CAEmitterCell()
        cell.birthRate = 100
        cell.lifetime = 3.0
        cell.lifetimeRange = 1
        cell.scale = 0.5
        cell.scaleRange = 0.5
        cell.color = UIColor(red: 0, green: 1, blue: 0, alpha: 0.2).cgColor
        cell.alphaRange = 1
        cell.redRange = 255
        cell.blueRange = 22
        cell.greenRange = 1.5
        cell.contents = UIImage(named: "petal")?.cgImage
        cell.name = "smoke"
        cell.velocity = 200
        cell.velocityRange = 50
        cell.emissionLongitude = CGFloat(3 * Float.pi)
        cell.emissionRange = CGFloat(2 * Float.pi)
        cell.spin = CGFloat(2 * Float.pi)
        cell.spinRange = CGFloat(2 * Float.pi)
        emitterLayer.emitterCells = [cell]
        self.layer.addSublayer(emitterLayer)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        emitterLayer.frame = self.bounds
        emitterLayer.emitterPosition = CGPoint(
            x: bounds.size.width/2.0,
            y: bounds.size.height/2.0
        )
        emitterLayer.emitterSize = CGSize(
            width: bounds.size.width - 100,
            height: 20
        )
        emitterLayer.setNeedsDisplay()
    }
}

class EmitterLayer: CALayer {
    override func draw(in ctx: CGContext) {

    }
}
