//
//  Path.swift
//  GalacticOdysseyCaseStudies
//
//  Created by malekmatin on 8/7/24.
//

import UIKit

class Path {
    static var circle: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 1.23, y: 25))
        shape.addCurve(to: CGPoint(x: 2.12, y: 18.35), controlPoint1: CGPoint(x: 1.23, y: 22.7), controlPoint2: CGPoint(x: 1.54, y: 20.47))
        shape.addCurve(to: CGPoint(x: 4.64, y: 12.38), controlPoint1: CGPoint(x: 2.7, y: 16.24), controlPoint2: CGPoint(x: 3.56, y: 14.23))
        shape.addCurve(to: CGPoint(x: 8.55, y: 7.32), controlPoint1: CGPoint(x: 5.73, y: 10.53), controlPoint2: CGPoint(x: 7.04, y: 8.83))
        shape.addCurve(to: CGPoint(x: 13.61, y: 3.41), controlPoint1: CGPoint(x: 10.06, y: 5.81), controlPoint2: CGPoint(x: 11.76, y: 4.5))
        shape.addCurve(to: CGPoint(x: 19.58, y: 0.89), controlPoint1: CGPoint(x: 15.46, y: 2.33), controlPoint2: CGPoint(x: 17.47, y: 1.48))
        shape.addCurve(to: CGPoint(x: 26.23, y: 0), controlPoint1: CGPoint(x: 21.7, y: 0.31), controlPoint2: CGPoint(x: 23.93, y: 0))
        shape.addCurve(to: CGPoint(x: 32.87, y: 0.89), controlPoint1: CGPoint(x: 28.53, y: 0), controlPoint2: CGPoint(x: 30.76, y: 0.31))
        shape.addCurve(to: CGPoint(x: 38.85, y: 3.41), controlPoint1: CGPoint(x: 34.99, y: 1.48), controlPoint2: CGPoint(x: 36.99, y: 2.33))
        shape.addCurve(to: CGPoint(x: 43.91, y: 7.32), controlPoint1: CGPoint(x: 40.7, y: 4.5), controlPoint2: CGPoint(x: 42.4, y: 5.81))
        shape.addCurve(to: CGPoint(x: 47.81, y: 12.38), controlPoint1: CGPoint(x: 45.41, y: 8.83), controlPoint2: CGPoint(x: 46.73, y: 10.53))
        shape.addCurve(to: CGPoint(x: 50.33, y: 18.35), controlPoint1: CGPoint(x: 48.9, y: 14.23), controlPoint2: CGPoint(x: 49.75, y: 16.24))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 50.92, y: 20.47), controlPoint2: CGPoint(x: 51.23, y: 22.7))
        shape.addCurve(to: CGPoint(x: 49.95, y: 32.9), controlPoint1: CGPoint(x: 51.23, y: 27.76), controlPoint2: CGPoint(x: 50.78, y: 30.42))
        shape.addCurve(to: CGPoint(x: 46.4, y: 39.76), controlPoint1: CGPoint(x: 49.13, y: 35.39), controlPoint2: CGPoint(x: 47.92, y: 37.7))
        shape.addCurve(to: CGPoint(x: 40.99, y: 45.18), controlPoint1: CGPoint(x: 44.89, y: 41.83), controlPoint2: CGPoint(x: 43.06, y: 43.66))
        shape.addCurve(to: CGPoint(x: 34.13, y: 48.73), controlPoint1: CGPoint(x: 38.92, y: 46.69), controlPoint2: CGPoint(x: 36.61, y: 47.9))
        shape.addCurve(to: CGPoint(x: 26.23, y: 50), controlPoint1: CGPoint(x: 31.65, y: 49.55), controlPoint2: CGPoint(x: 28.99, y: 50))
        shape.addCurve(to: CGPoint(x: 19.58, y: 49.11), controlPoint1: CGPoint(x: 23.93, y: 50), controlPoint2: CGPoint(x: 21.7, y: 49.69))
        shape.addCurve(to: CGPoint(x: 13.61, y: 46.59), controlPoint1: CGPoint(x: 17.47, y: 48.52), controlPoint2: CGPoint(x: 15.46, y: 47.67))
        shape.addCurve(to: CGPoint(x: 8.55, y: 42.68), controlPoint1: CGPoint(x: 11.76, y: 45.5), controlPoint2: CGPoint(x: 10.06, y: 44.19))
        shape.addCurve(to: CGPoint(x: 4.64, y: 37.62), controlPoint1: CGPoint(x: 7.04, y: 41.17), controlPoint2: CGPoint(x: 5.73, y: 39.47))
        shape.addCurve(to: CGPoint(x: 2.12, y: 31.65), controlPoint1: CGPoint(x: 3.56, y: 35.77), controlPoint2: CGPoint(x: 2.7, y: 33.76))
        shape.addCurve(to: CGPoint(x: 1.23, y: 25), controlPoint1: CGPoint(x: 1.54, y: 29.53), controlPoint2: CGPoint(x: 1.23, y: 27.3))
        shape.close()
        
        shape.move(to: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        shape.addCurve(to: CGPoint(x: 51.23, y: 25), controlPoint1: CGPoint(x: 51.23, y: 25), controlPoint2: CGPoint(x: 51.23, y: 25))
        
        return shape
    }
    
    static var rocket: UIBezierPath {
        let shape = UIBezierPath()
        
        shape.move(to: CGPoint(x: 3.16, y: 27.04))
        shape.addCurve(to: CGPoint(x: 3.16, y: 22.77), controlPoint1: CGPoint(x: 3.16, y: 25.61), controlPoint2: CGPoint(x: 3.16, y: 24.19))
        shape.addCurve(to: CGPoint(x: 4.85, y: 20.01), controlPoint1: CGPoint(x: 3.16, y: 21.59), controlPoint2: CGPoint(x: 3.8, y: 20.54))
        shape.addCurve(to: CGPoint(x: 8, y: 18.49), controlPoint1: CGPoint(x: 5.67, y: 19.61), controlPoint2: CGPoint(x: 6.75, y: 19.08))
        shape.addCurve(to: CGPoint(x: 0.69, y: 11.19), controlPoint1: CGPoint(x: 5.56, y: 16.06), controlPoint2: CGPoint(x: 3.13, y: 13.62))
        shape.addCurve(to: CGPoint(x: 0.08, y: 8.91), controlPoint1: CGPoint(x: 0.1, y: 10.6), controlPoint2: CGPoint(x: -0.14, y: 9.73))
        shape.addCurve(to: CGPoint(x: 1.76, y: 7.26), controlPoint1: CGPoint(x: 0.3, y: 8.1), controlPoint2: CGPoint(x: 0.95, y: 7.47))
        shape.addCurve(to: CGPoint(x: 11.5, y: 4.77), controlPoint1: CGPoint(x: 5.01, y: 6.43), controlPoint2: CGPoint(x: 8.25, y: 5.6))
        shape.addCurve(to: CGPoint(x: 18.21, y: 6.61), controlPoint1: CGPoint(x: 13.91, y: 4.16), controlPoint2: CGPoint(x: 16.45, y: 4.86))
        shape.addCurve(to: CGPoint(x: 23.89, y: 12.29), controlPoint1: CGPoint(x: 20.1, y: 8.51), controlPoint2: CGPoint(x: 22, y: 10.4))
        shape.addCurve(to: CGPoint(x: 25.17, y: 12.01), controlPoint1: CGPoint(x: 24.33, y: 12.18), controlPoint2: CGPoint(x: 24.75, y: 12.09))
        shape.addCurve(to: CGPoint(x: 51.97, y: 23.42), controlPoint1: CGPoint(x: 39.16, y: 9.32), controlPoint2: CGPoint(x: 47.86, y: 17.47))
        shape.addCurve(to: CGPoint(x: 51.97, y: 26.57), controlPoint1: CGPoint(x: 52.62, y: 24.37), controlPoint2: CGPoint(x: 52.61, y: 25.62))
        shape.addCurve(to: CGPoint(x: 25.17, y: 37.99), controlPoint1: CGPoint(x: 47.86, y: 32.53), controlPoint2: CGPoint(x: 39.16, y: 40.67))
        shape.addCurve(to: CGPoint(x: 23.89, y: 37.7), controlPoint1: CGPoint(x: 24.76, y: 37.91), controlPoint2: CGPoint(x: 24.33, y: 37.81))
        shape.addCurve(to: CGPoint(x: 18.21, y: 43.39), controlPoint1: CGPoint(x: 22, y: 39.6), controlPoint2: CGPoint(x: 20.1, y: 41.49))
        shape.addCurve(to: CGPoint(x: 11.5, y: 45.22), controlPoint1: CGPoint(x: 16.45, y: 45.14), controlPoint2: CGPoint(x: 13.9, y: 45.84))
        shape.addCurve(to: CGPoint(x: 1.76, y: 42.74), controlPoint1: CGPoint(x: 8.25, y: 44.39), controlPoint2: CGPoint(x: 5.01, y: 43.57))
        shape.addCurve(to: CGPoint(x: 0.08, y: 41.09), controlPoint1: CGPoint(x: 0.95, y: 42.53), controlPoint2: CGPoint(x: 0.3, y: 41.9))
        shape.addCurve(to: CGPoint(x: 0.69, y: 38.81), controlPoint1: CGPoint(x: -0.14, y: 40.27), controlPoint2: CGPoint(x: 0.09, y: 39.41))
        shape.addCurve(to: CGPoint(x: 8.09, y: 31.41), controlPoint1: CGPoint(x: 3.16, y: 36.34), controlPoint2: CGPoint(x: 5.63, y: 33.87))
        shape.addCurve(to: CGPoint(x: 4.81, y: 29.76), controlPoint1: CGPoint(x: 6.78, y: 30.77), controlPoint2: CGPoint(x: 5.65, y: 30.2))
        shape.addCurve(to: CGPoint(x: 3.15, y: 27.03), controlPoint1: CGPoint(x: 3.78, y: 29.24), controlPoint2: CGPoint(x: 3.16, y: 28.18))
        shape.addCurve(to: CGPoint(x: 3.16, y: 27.04), controlPoint1: CGPoint(x: 3.15, y: 27.03), controlPoint2: CGPoint(x: 3.15, y: 27.03))
        shape.close()
        
        shape.move(to: CGPoint(x: 33.83, y: 27.76))
        shape.addCurve(to: CGPoint(x: 36.6, y: 28.9), controlPoint1: CGPoint(x: 34.57, y: 28.49), controlPoint2: CGPoint(x: 35.56, y: 28.9))
        shape.addCurve(to: CGPoint(x: 39.36, y: 27.76), controlPoint1: CGPoint(x: 37.63, y: 28.9), controlPoint2: CGPoint(x: 38.62, y: 28.49))
        shape.addCurve(to: CGPoint(x: 40.5, y: 25), controlPoint1: CGPoint(x: 40.09, y: 27.03), controlPoint2: CGPoint(x: 40.5, y: 26.03))
        shape.addCurve(to: CGPoint(x: 39.36, y: 22.24), controlPoint1: CGPoint(x: 40.5, y: 23.96), controlPoint2: CGPoint(x: 40.09, y: 22.97))
        shape.addCurve(to: CGPoint(x: 36.6, y: 21.09), controlPoint1: CGPoint(x: 38.62, y: 21.5), controlPoint2: CGPoint(x: 37.63, y: 21.09))
        shape.addCurve(to: CGPoint(x: 33.83, y: 22.24), controlPoint1: CGPoint(x: 35.56, y: 21.09), controlPoint2: CGPoint(x: 34.57, y: 21.5))
        shape.addCurve(to: CGPoint(x: 32.69, y: 25), controlPoint1: CGPoint(x: 33.1, y: 22.97), controlPoint2: CGPoint(x: 32.69, y: 23.96))
        shape.addCurve(to: CGPoint(x: 33.83, y: 27.76), controlPoint1: CGPoint(x: 32.69, y: 26.03), controlPoint2: CGPoint(x: 33.1, y: 27.03))
        
        return shape
    }
    
    static var star: UIBezierPath {
        let shape = UIBezierPath()
        
        
        shape.move(to: CGPoint(x: 10.06, y: 4.97))
        shape.addCurve(to: CGPoint(x: 9.94, y: 4.61), controlPoint1: CGPoint(x: 10.06, y: 4.84), controlPoint2: CGPoint(x: 10.02, y: 4.71))
        shape.addCurve(to: CGPoint(x: 9.64, y: 4.39), controlPoint1: CGPoint(x: 9.87, y: 4.51), controlPoint2: CGPoint(x: 9.76, y: 4.43))
        shape.addLine(to: CGPoint(x: 8.12, y: 3.88))
        shape.addCurve(to: CGPoint(x: 6.88, y: 3.12), controlPoint1: CGPoint(x: 7.65, y: 3.73), controlPoint2: CGPoint(x: 7.23, y: 3.47))
        shape.addCurve(to: CGPoint(x: 6.1, y: 1.9), controlPoint1: CGPoint(x: 6.53, y: 2.78), controlPoint2: CGPoint(x: 6.26, y: 2.36))
        shape.addLine(to: CGPoint(x: 5.59, y: 0.38))
        shape.addCurve(to: CGPoint(x: 5.36, y: 0.1), controlPoint1: CGPoint(x: 5.54, y: 0.27), controlPoint2: CGPoint(x: 5.46, y: 0.17))
        shape.addCurve(to: CGPoint(x: 5.02, y: 0), controlPoint1: CGPoint(x: 5.26, y: 0.04), controlPoint2: CGPoint(x: 5.14, y: 0))
        shape.addCurve(to: CGPoint(x: 4.68, y: 0.1), controlPoint1: CGPoint(x: 4.9, y: 0), controlPoint2: CGPoint(x: 4.78, y: 0.04))
        shape.addCurve(to: CGPoint(x: 4.45, y: 0.38), controlPoint1: CGPoint(x: 4.58, y: 0.17), controlPoint2: CGPoint(x: 4.5, y: 0.27))
        shape.addLine(to: CGPoint(x: 3.92, y: 1.9))
        shape.addCurve(to: CGPoint(x: 3.15, y: 3.15), controlPoint1: CGPoint(x: 3.77, y: 2.37), controlPoint2: CGPoint(x: 3.5, y: 2.8))
        shape.addCurve(to: CGPoint(x: 1.9, y: 3.92), controlPoint1: CGPoint(x: 2.8, y: 3.5), controlPoint2: CGPoint(x: 2.37, y: 3.77))
        shape.addLine(to: CGPoint(x: 0.38, y: 4.43))
        shape.addCurve(to: CGPoint(x: 0.1, y: 4.66), controlPoint1: CGPoint(x: 0.27, y: 4.48), controlPoint2: CGPoint(x: 0.17, y: 4.56))
        shape.addCurve(to: CGPoint(x: 0, y: 5), controlPoint1: CGPoint(x: 0.04, y: 4.76), controlPoint2: CGPoint(x: 0, y: 4.88))
        shape.addCurve(to: CGPoint(x: 0.1, y: 5.34), controlPoint1: CGPoint(x: 0, y: 5.12), controlPoint2: CGPoint(x: 0.04, y: 5.24))
        shape.addCurve(to: CGPoint(x: 0.38, y: 5.57), controlPoint1: CGPoint(x: 0.17, y: 5.44), controlPoint2: CGPoint(x: 0.27, y: 5.52))
        shape.addLine(to: CGPoint(x: 1.9, y: 6.08))
        shape.addCurve(to: CGPoint(x: 3.15, y: 6.85), controlPoint1: CGPoint(x: 2.37, y: 6.23), controlPoint2: CGPoint(x: 2.8, y: 6.5))
        shape.addCurve(to: CGPoint(x: 3.92, y: 8.1), controlPoint1: CGPoint(x: 3.5, y: 7.2), controlPoint2: CGPoint(x: 3.76, y: 7.63))
        shape.addLine(to: CGPoint(x: 4.43, y: 9.62))
        shape.addCurve(to: CGPoint(x: 4.66, y: 9.9), controlPoint1: CGPoint(x: 4.48, y: 9.73), controlPoint2: CGPoint(x: 4.56, y: 9.83))
        shape.addCurve(to: CGPoint(x: 5, y: 10), controlPoint1: CGPoint(x: 4.76, y: 9.96), controlPoint2: CGPoint(x: 4.88, y: 10))
        shape.addCurve(to: CGPoint(x: 5.34, y: 9.9), controlPoint1: CGPoint(x: 5.12, y: 10), controlPoint2: CGPoint(x: 5.24, y: 9.96))
        shape.addCurve(to: CGPoint(x: 5.56, y: 9.62), controlPoint1: CGPoint(x: 5.44, y: 9.83), controlPoint2: CGPoint(x: 5.52, y: 9.73))
        shape.addLine(to: CGPoint(x: 6.07, y: 8.1))
        shape.addCurve(to: CGPoint(x: 6.85, y: 6.85), controlPoint1: CGPoint(x: 6.23, y: 7.63), controlPoint2: CGPoint(x: 6.49, y: 7.2))
        shape.addCurve(to: CGPoint(x: 8.1, y: 6.08), controlPoint1: CGPoint(x: 7.2, y: 6.5), controlPoint2: CGPoint(x: 7.63, y: 6.23))
        shape.addLine(to: CGPoint(x: 9.62, y: 5.57))
        shape.addCurve(to: CGPoint(x: 9.94, y: 5.34), controlPoint1: CGPoint(x: 9.75, y: 5.53), controlPoint2: CGPoint(x: 9.86, y: 5.45))
        shape.addCurve(to: CGPoint(x: 10.06, y: 4.97), controlPoint1: CGPoint(x: 10.02, y: 5.23), controlPoint2: CGPoint(x: 10.06, y: 5.1))
        shape.close()
        
        return shape
        
    }
}
