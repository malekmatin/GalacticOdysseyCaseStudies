//
//  PathFollowingWithCurveViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

class PathFollowingWithCurveViewController: SliderViewController {
    let startx: CGFloat = 50
    let starty: CGFloat = 150
    
    lazy var endx: CGFloat = view.bounds.width - 50
    lazy var endy: CGFloat = view.bounds.height - 200
    
    
    var circlePath: UIBezierPath {
        UIBezierPath(arcCenter: .zero, radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
    }
    
    var routePath: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: startx, y: starty))
        path.addCurve(to: CGPoint(x: 326.1, y: 114.5), controlPoint1: CGPoint(x: 203.2, y: 101.2), controlPoint2: CGPoint(x: 308.1, y: 88.2))
        path.addCurve(to: CGPoint(x: 99.1, y: 254.8), controlPoint1: CGPoint(x: 360.8, y: 165), controlPoint2: CGPoint(x: 93.5, y: 212.5))
        path.addCurve(to: CGPoint(x: 397.5, y: 333.4), controlPoint1: CGPoint(x: 65.1, y: 301), controlPoint2: CGPoint(x: 395.1, y: 277.7))
        path.addCurve(to: CGPoint(x: 102.5, y: 483.2), controlPoint1: CGPoint(x: 399.9, y: 389.7), controlPoint2: CGPoint(x: 127.6, y: 429.4))
        path.addCurve(to: CGPoint(x: endx, y: endy), controlPoint1: CGPoint(x: 121.4, y: 528.6), controlPoint2: CGPoint(x: 410.4, y: 547.5))
        return path
    }
    
    let shapeLayer = CAShapeLayer()
    
    lazy var startPoint: CGPoint = .init(x: startx, y: starty)
    lazy var endPoint: CGPoint = .init(x: endx, y: endy)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addHintPath()
            
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.systemBlue.cgColor
        shapeLayer.lineWidth = 3.0
        shapeLayer.position = startPoint
        shapeLayer.speed = 0
        view.layer.addSublayer(shapeLayer)
        
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = routePath.cgPath
        animation.duration = 1
        animation.isRemovedOnCompletion = false
        
        shapeLayer.add(animation, forKey: "circleMovement")
    }
    
    private func addHintPath() {
        let destCircleShape = CAShapeLayer()
        destCircleShape.path = circlePath.cgPath
        destCircleShape.strokeColor = UIColor.lightGray.cgColor
        destCircleShape.lineWidth = 3.0
        destCircleShape.position = endPoint
        destCircleShape.lineDashPhase = 5
        destCircleShape.lineDashPattern = [3, 6]
        destCircleShape.lineCap = .round
        destCircleShape.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(destCircleShape)
        
        let routeShape = CAShapeLayer()
        routeShape.path = routePath.cgPath
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
