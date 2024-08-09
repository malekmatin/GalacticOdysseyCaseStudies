//
//  PaginationViewController.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

class PaginationViewController: UIViewController {
    let Artboards: CGFloat = 1
    let ArtboardWidth: CGFloat = 400.0
    
    private lazy var scrollView: UIScrollView = {
        let result = UIScrollView()
        result.contentInsetAdjustmentBehavior = .never
        result.isPagingEnabled = true
        result.translatesAutoresizingMaskIntoConstraints = false
        result.showsHorizontalScrollIndicator = false
        result.showsVerticalScrollIndicator = false
        result.delegate = self
        return result
    }()

    private lazy var scrollViewContentView: UIView = {
        let result = UIView()
        result.translatesAutoresizingMaskIntoConstraints = false
        return result
    }()
    
    let subject: CAShapeLayer = .init()
    let pathShape: CAShapeLayer = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.addSubview(scrollViewContentView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            scrollViewContentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollViewContentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollViewContentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollViewContentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            scrollViewContentView.widthAnchor.constraint(equalToConstant: 2 * view.bounds.width)
        ])
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 154))
        path.addCurve(to: CGPoint(x: 125, y: 68.5), controlPoint1: CGPoint(x: 41.7, y: 154), controlPoint2: CGPoint(x: 62, y: 50.9))
        path.addCurve(to: CGPoint(x: 150.3, y: 302.5), controlPoint1: CGPoint(x: 183.3, y: 84.8), controlPoint2: CGPoint(x: 75.7, y: 284.3))
        path.addCurve(to: CGPoint(x: 258.9, y: 174.5), controlPoint1: CGPoint(x: 224.8, y: 320.7), controlPoint2: CGPoint(x: 209.1, y: 201.4))
        path.addCurve(to: CGPoint(x: 400, y: 244), controlPoint1: CGPoint(x: 308.6, y: 147.6), controlPoint2: CGPoint(x: 319.5, y: 226.5))
        
        
        pathShape.path = path.cgPath
        pathShape.strokeColor = UIColor.gray.cgColor
        pathShape.lineWidth = 2
        pathShape.lineDashPattern = [2, 10]
        pathShape.lineCap = .round
        pathShape.bounds = .init(origin: .zero, size: .init(width: Artboards * ArtboardWidth, height: ArtboardWidth))
        pathShape.position = view.center
        pathShape.fillColor = UIColor.clear.cgColor
        pathShape.transform = CATransform3DMakeAffineTransform(.init(translationX: path.bounds.width / 2, y: 0))

        view.layer.addSublayer(pathShape)
        
        let linePhaseAnimation = CABasicAnimation(keyPath: "lineDashPhase")
        linePhaseAnimation.fromValue = 12
        linePhaseAnimation.toValue = 0
        linePhaseAnimation.duration = 2
        linePhaseAnimation.repeatCount = .infinity
        pathShape.add(linePhaseAnimation, forKey: "linePhaseAnimation")
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 1
        animationGroup.isRemovedOnCompletion = false
        
        subject.path = Path.circle.cgPath
        subject.fillColor = UIColor.clear.cgColor
        subject.strokeColor = UIColor.systemBlue.cgColor
        subject.lineWidth = 3.0
        subject.position = view.center
        subject.bounds = .init(origin: .zero, size: .init(width: 50, height: 50))
        subject.speed = 0
        view.layer.addSublayer(subject)
        
        let motionPathAnimation = CAKeyframeAnimation(keyPath: "position")
        motionPathAnimation.path = path.cgPath
        motionPathAnimation.duration = 1
        motionPathAnimation.beginTime = 0
        
        animationGroup.animations = [ motionPathAnimation ]
        
        subject.add(animationGroup, forKey: "animations")
        
        subject.transform = CATransform3DMakeAffineTransform(.init(translationX: view.center.x, y: view.center.y - (ArtboardWidth / 2)))
    }
}


extension PaginationViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        let offset = max(min(scrollView.contentOffset.x, 2 * view.bounds.width), 0)
        let r = offset.truncatingRemainder(dividingBy: view.bounds.width)
        let progress = (r) / view.bounds.width

        subject.timeOffset = Double(page) + progress

        CATransaction.begin()
        CATransaction.setDisableActions(true)
        let path_displacement = Double.lerp(r, srcLow: 0, srcHigh: view.bounds.width, dstLow: ArtboardWidth * Double(page), dstHigh: ArtboardWidth * Double(page + 1))
        pathShape.transform = CATransform3DMakeAffineTransform(.init(translationX: -path_displacement + ArtboardWidth / 2.0, y: 0))
        subject.transform = CATransform3DMakeAffineTransform(.init(translationX: view.center.x - path_displacement, y: view.center.y - (ArtboardWidth / 2)))
        CATransaction.commit()
        
    }
}



protocol LinearInterpolation {
    static func lerp(_ value: Self, srcLow: Self, srcHigh: Self, dstLow: Self, dstHigh: Self) -> Self
}

extension LinearInterpolation where Self: FloatingPoint {
    static func lerp(_ value: Self, srcLow: Self, srcHigh: Self, dstLow: Self, dstHigh: Self) -> Self {
        let negate = dstLow > dstHigh
        let low2 = negate ? -dstLow : dstLow
        let high2 = negate ? -dstHigh : dstHigh
        let result = low2 + (value - srcLow) * (high2 - low2) / (srcHigh - srcLow)
        return (negate ? -1 : 1) * min(max(result, low2), high2)
    }
}

extension Double: LinearInterpolation {}
extension CGFloat: LinearInterpolation {}
extension Float: LinearInterpolation {}

extension CGAffineTransform {
    static func lerp(from: CGAffineTransform, to: CGAffineTransform, progress: CGFloat) -> CGAffineTransform {

        let a = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.a, dstHigh: to.a)
        let b = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.b, dstHigh: to.b)
        let c = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.c, dstHigh: to.c)
        let d = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.d, dstHigh: to.d)
        let tx = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.tx, dstHigh: to.tx)
        let ty = CGFloat.lerp(progress, srcLow: 0, srcHigh: 1, dstLow: from.ty, dstHigh: to.ty)
        return .init(a, b, c, d, tx, ty)
    }
}
