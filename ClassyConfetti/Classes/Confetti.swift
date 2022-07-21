//
//  Confetti.swift
//  ClassyConfetti
//
//  Created by Sai Hari on 21/07/22.
//

import Foundation
import QuartzCore
import UIKit
import GameKit

enum Content {
    enum Shape {
        case circle
        case triangle
        case square
    }
    
    case shape(Shape,CGFloat,CGFloat)
    case Image(UIImage)
}

extension Content.Shape {
    func path(in rect : CGRect) -> CGPath {
        switch self {
            case .circle:
                return CGPath(ellipseIn: rect, transform: nil)
            case .triangle:
                let path = CGMutablePath()
                path.addLines(between: [
                    CGPoint(x: rect.midX, y: 0),
                    CGPoint(x: rect.maxX, y: rect.maxY),
                    CGPoint(x: rect.minX, y: rect.maxY),
                    CGPoint(x: rect.midX, y: 0)
                ])
                return path
            case .square:
                return CGPath(rect: rect, transform: nil)
        }
    }
    
    func image(width : CGFloat,height : CGFloat) -> UIImage {
        let rect = CGRect(origin: .zero, size: CGSize(width: width, height: height))
        return UIGraphicsImageRenderer(size: rect.size).image { context in
            context.cgContext.setFillColor(UIColor.white.cgColor)
            context.cgContext.addPath(path(in: rect))
            context.cgContext.fillPath()
        }
    }
    
}

extension Content {

    var image : UIImage {
        switch self {
            case .shape(let shape,let width,let height):
                return shape.image(width: width, height: height)
            case .Image(let uIImage):
                return uIImage
        }
    }
}

public enum Position {
    case fromTop
    case fromBeyondTop
    case fromTopLeft
    case fromTopRight
    case fromBottom
    case fromBottomLeft
    case fromBottomRight
    case fromCenter
}

extension Position {
 
    static func getPoint(view : UIView,position : Position) -> CGPoint {
        switch position {
            case .fromTop:
                return CGPoint(x: view.bounds.midX, y: 0)
            case .fromBeyondTop:
                return CGPoint(x: view.bounds.midX, y: view.bounds.minY - 500)
            case .fromTopLeft:
                return CGPoint(x: 0, y: 0)
            case .fromTopRight:
                return CGPoint(x: view.bounds.maxX, y: 0)
            case .fromBottom:
                return CGPoint(x: view.bounds.midX , y: view.bounds.maxY)
            case .fromBottomLeft:
                return CGPoint(x: view.bounds.minX, y: view.bounds.maxY)
            case .fromBottomRight:
                return CGPoint(x: view.bounds.maxX, y: view.bounds.maxY)
            case .fromCenter:
                return CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        }
    }
    
    var yAcc : CGFloat {
        switch self {
        case .fromTop:
            return 150
        case .fromBeyondTop:
            return 150
        case .fromTopLeft:
            return 150
        case .fromTopRight:
            return 150
        case .fromBottom:
            return -150
        case .fromBottomLeft:
            return -150
        case .fromBottomRight:
            return -150
        case .fromCenter:
            return 150
        }
    }
}

public class classyConfetti : CAEmitterLayer {
    
    let contentsType : [Content] = [.shape(.circle, 5.0, 5.0),
                                    .shape(.square,5.0,5.0),
                                    .shape(.triangle,5.0,5.0),
                                    .Image(UIImage(named: "confetti") ?? UIImage())
    ]
    
    let colors : [UIColor] = [.yellow,.magenta,.blue,.red]
     
    func configure(with contents: [Content],for position : Position) {
            var i = 0
            emitterCells = contents.map { content in
                let cell = CAEmitterCell()

                cell.birthRate = 100.0
                cell.lifetime = 10.0
                cell.velocity = 150
                cell.velocityRange = 100
                cell.emissionRange = CGFloat(Double.pi)
                cell.spin = .pi
                cell.spinRange = .pi * 4
                cell.scaleRange = 0.25
                cell.scale = 1.0 - cell.scaleRange
                cell.contents = content.image.cgImage
                cell.color = nextColor(i: i)
                cell.yAcceleration = position.yAcc
                
                i += 1
                return cell
            }
    }
    
    public func emit(in view : UIView,with position : Position,for duration : CFTimeInterval = 1) {
        
         let layer = classyConfetti()
         
         layer.birthRate = 0
         layer.emitterPosition = Position.getPoint(view: view, position: position)
         layer.configure(with: contentsType, for: position)
         layer.frame = self.bounds
         layer.beginTime = CACurrentMediaTime()
         view.layer.addSublayer(layer)
         addBirthrateAnimation(to: layer, time: duration)
    }
 
    func nextColor(i : Int) -> CGColor {
        return colors[i % colors.count].cgColor
    }
    
    func addBirthrateAnimation(to layer: CALayer,time : CFTimeInterval) {
        let animation = CABasicAnimation()
        animation.duration = time
        animation.fromValue = 2
        animation.toValue = 0

        layer.add(animation, forKey: "birthRate")
    }

}

