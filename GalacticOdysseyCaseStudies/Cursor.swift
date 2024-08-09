//
//  Cursor.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

class Cursor: CAShapeLayer {

    override init() {
        super.init()

        scale = .init(width: 1, height: 1)
        translation = .zero
        self.originalLayer = self
    }

    weak var originalLayer: Cursor?
    override init(layer: Any) {
        super.init(layer: layer)

        if let layer = layer as? Cursor {
            self.rotationTangentCurrentPoint = layer.rotationTangentCurrentPoint
            self.rotationTangentPreviousValues = layer.rotationTangentPreviousValues
            self.translation = layer.translation
            self.scale = layer.scale
            self.originalLayer = layer
        }

    }

    private var rotationTangentPreviousValues: (CGPoint, CGPoint)?
    @NSManaged var rotationTangentCurrentPoint: CGPoint
    @NSManaged var translation: CGPoint
    @NSManaged var scale: CGSize

    override class func needsDisplay(forKey key: String) -> Bool {
        if key == "rotationTangentCurrentPoint" {
            return true
        } else if key == "translation" {
            return true
        } else if key == "scale" {
            return true
        }
        return super.needsDisplay(forKey: key)
    }

    override func draw(in ctx: CGContext) {
        var finalTransform = CATransform3DMakeAffineTransform(.init(translationX: translation.x, y: translation.y).scaledBy(x: scale.width, y: scale.height))

        //         when the animation repeats, the previous point is the last point on the path and the new point is the first point of the path, which are unrelated for computing the tangent vectors for. we eliminate the case when the previous and current points are far. based on rotationMaxPointDistance value.
        if let rotationTangentPreviousValues {
            let vector: CGPoint
            if rotationTangentCurrentPoint.equalTo(rotationTangentPreviousValues.0) {
                vector = CGPoint(x: rotationTangentPreviousValues.0.x - rotationTangentPreviousValues.1.x, y: rotationTangentPreviousValues.0.y - rotationTangentPreviousValues.1.y)
            } else {
                vector = CGPoint(x: rotationTangentCurrentPoint.x - rotationTangentPreviousValues.0.x, y: rotationTangentCurrentPoint.y - rotationTangentPreviousValues.0.y)
            }

            var k: CGFloat = abs(atan2(vector.y, vector.x))
            if (vector.y < 0) {
                k = k * -1
            }
            finalTransform = CATransform3DRotate(finalTransform, k, 0, 0, 1)
        }

        CATransaction.begin()
        CATransaction.setDisableActions(true)
        self.originalLayer?.transform = finalTransform
        CATransaction.commit()

        self.originalLayer?.rotationTangentPreviousValues = (rotationTangentCurrentPoint,  self.originalLayer?.rotationTangentPreviousValues?.0 ?? .zero)
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
