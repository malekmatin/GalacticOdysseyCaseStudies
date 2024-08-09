//
//  MorphViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

class MorphViewController: SliderViewController {
    let subject: CAShapeLayer = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        subject.path = Path.circle.cgPath
        subject.fillColor = UIColor.clear.cgColor
        subject.strokeColor = UIColor.systemBlue.cgColor
        subject.lineWidth = 3.0
        subject.position = view.center
        subject.bounds = .init(origin: .zero, size: .init(width: 50, height: 50))
        subject.speed = 0
        
        view.layer.addSublayer(subject)

        let morphAnimation = CABasicAnimation(keyPath: "path")
        morphAnimation.fromValue = Path.circle.cgPath
        morphAnimation.toValue = Path.rocket.cgPath
        morphAnimation.isRemovedOnCompletion = false
        morphAnimation.duration = 1
                
        subject.add(morphAnimation, forKey: "morph")
    }
    
    override func sliderValueUpdated(value: Float) {
        subject.timeOffset = CFTimeInterval(value)
    }
}
