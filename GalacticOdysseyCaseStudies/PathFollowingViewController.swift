//
//  PathFollowingViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit
 
class PathFollowingViewController: SliderViewController {
    let startx: CGFloat = 50
    let starty: CGFloat = 150
    
    lazy var endx: CGFloat = view.bounds.width - 50
    lazy var endy: CGFloat = view.bounds.height - 200
    
    
    var circlePath: UIBezierPath {
        UIBezierPath(arcCenter: .zero, radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
    }
    
    var routePath: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: .init(x: startx, y: starty))
        path.addLine(to: .init(x: endx - 100, y: starty))
        path.addLine(to: .init(x: startx, y: starty + 200))
        path.addLine(to: .init(x: endx - 25, y: starty + 260))
        path.addLine(to: .init(x: (endx - startx) / 2, y: endy))
        path.addLine(to: .init(x: endx, y: endy))
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
