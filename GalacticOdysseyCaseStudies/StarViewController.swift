//
//  StarViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/8/24.
//

import UIKit

class StarViewController: UIViewController {
    let subject: CAShapeLayer = .init()
    let scale: CGFloat = 5
    let color: UIColor = .purple

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let subject = CAShapeLayer()
        subject.path = Path.star.cgPath
        subject.fillColor = color.cgColor
        subject.shadowColor = subject.fillColor
        subject.shadowOffset = .zero
        subject.shadowRadius = 5 * scale
        subject.shadowOpacity = 1
        subject.bounds = .init(origin: .zero, size: .init(width: 10, height: 10))

        let transformAnimation = CABasicAnimation(keyPath: "transform")
        transformAnimation.fromValue = CATransform3DMakeScale(scale, scale, 1)
        transformAnimation.toValue = CATransform3DMakeScale(scale * 2, scale * 2, 1)
        transformAnimation.duration = 1.5
        transformAnimation.repeatCount = .infinity
        transformAnimation.autoreverses = true
        subject.add(transformAnimation, forKey: "pulse")

        let blinkAnimation = CABasicAnimation(keyPath: "opacity")
        blinkAnimation.fromValue = 1
        blinkAnimation.toValue = 0.5
        blinkAnimation.duration = 1
        blinkAnimation.repeatCount = .infinity
        blinkAnimation.autoreverses = true
        subject.add(blinkAnimation, forKey: "blink")
        
        subject.position = view.center
        view.layer.addSublayer(subject)
    }
}
