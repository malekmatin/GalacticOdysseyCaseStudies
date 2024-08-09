//
//  ScaleViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import Foundation
import UIKit

class ScaleViewController: SliderViewController {
    let shapeLayer = CAShapeLayer()
    
    lazy var startPoint: CGPoint = .init(x: 25, y: view.center.y - 25)
    lazy var endPoint: CGPoint = .init(x: view.bounds.width - 75, y: view.center.y - 25)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addHintPath()
            
        shapeLayer.path = Path.circle.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.systemBlue.cgColor
        shapeLayer.lineWidth = 3.0
        shapeLayer.position = startPoint
        shapeLayer.speed = 0
        view.layer.addSublayer(shapeLayer)
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 1
        animationGroup.isRemovedOnCompletion = false
        
        let movementAnimation =  CABasicAnimation(keyPath: "position")
        movementAnimation.fromValue = startPoint
        movementAnimation.toValue = CGPoint.init(x: endPoint.x - 25, y: endPoint.y - 25)
        movementAnimation.duration = 1
        movementAnimation.isRemovedOnCompletion = false
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform")
        scaleAnimation.fromValue = CATransform3DIdentity
        scaleAnimation.toValue = CATransform3DScale(CATransform3DIdentity, 2, 2, 1)
        scaleAnimation.duration = 1
        scaleAnimation.isRemovedOnCompletion = false
        
        animationGroup.animations = [ movementAnimation, scaleAnimation ]
        
        shapeLayer.add(animationGroup, forKey: "animationGroup")
    }
    
    private func addHintPath() {
        let destCircleShape = CAShapeLayer()
        destCircleShape.path = Path.circle.cgPath
        destCircleShape.strokeColor = UIColor.lightGray.cgColor
        destCircleShape.lineWidth = 3.0
        destCircleShape.position = .init(x: endPoint.x - 25, y: endPoint.y - 25)
        destCircleShape.lineDashPhase = 5
        destCircleShape.lineDashPattern = [3, 6]
        destCircleShape.lineCap = .round
        destCircleShape.fillColor = UIColor.clear.cgColor
        destCircleShape.transform = CATransform3DMakeAffineTransform(.init(scaleX: 2, y: 2))
        view.layer.addSublayer(destCircleShape)
        
        let movementPath = UIBezierPath()
        movementPath.move(to: .init(x: startPoint.x + 25, y: startPoint.y + 25))
        movementPath.addLine(to: .init(x: endPoint.x, y: endPoint.y + 25))
        
        let routeShape = CAShapeLayer()
        routeShape.path = movementPath.cgPath
        routeShape.strokeColor = UIColor.lightGray.cgColor
        routeShape.lineWidth = 3.0
        routeShape.lineDashPhase = 5
        routeShape.lineDashPattern = [3, 6]
        routeShape.lineCap = .round
        routeShape.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(routeShape)
        
        let lineDashAnimation = CABasicAnimation(keyPath: "lineDashPhase")
        lineDashAnimation.fromValue = 9
        lineDashAnimation.toValue = 0
        lineDashAnimation.duration = 2
        lineDashAnimation.repeatCount = .infinity
             
        destCircleShape.add(lineDashAnimation, forKey: "lineDashPattern")
        routeShape.add(lineDashAnimation, forKey: "lineDashPattern")
    }
    
    override func sliderValueUpdated(value: Float) {
        shapeLayer.timeOffset = CFTimeInterval(value)
    }
}
