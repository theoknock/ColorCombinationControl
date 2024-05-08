//
//  CircleVIew.swift
//  ColorCombinationControl
//
//  Created by Xcode Developer on 5/7/24.
//

import SwiftUI
import CoreGraphics

struct CircleView: View {
    var angle: CGFloat = 359.0
    var step:  CGFloat = 30.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach (0 ..< 360) { i in
                        Circle()
                            .frame(width: geometry.frame(in: .local).width * 0.0675,
                                   height: geometry.frame(in: .local).height * 0.0675)
                            .offset(intersectionPoint(center: CGPoint(x: geometry.frame(in: .local).midX,
                                                                      y: geometry.frame(in: .local).midY),
                                                      angle: Angle(degrees: CGFloat(i)).radians,
                                                      radius: ((geometry.frame(in: .local).size.width / 2.0) < (geometry.frame(in: .local).size.height / 2.0))
                                                      ? (geometry.frame(in: .local).size.width / 2.0) : (geometry.frame(in: .local).midY)))
                            .border(.blue, width: 2.0)

                    .border(.green, width: 1.0)
                    //                    Circle()
                    //                        .frame(width: geometry.frame(in: .local).width * 0.0675,
                    //                               height: geometry.frame(in: .local).height * 0.0675)
                    //                        .offset(intersectionPoint(center: CGPoint(x: geometry.frame(in: .local).midX,
                    //                                                                  y: geometry.frame(in: .local).midY),
                    //                                                  angle: rotateHue(hueAngle:90.0,
                    //                                                                   stepAngle: CGFloat(30.0 * step)),
                    //                                                  radius: ((geometry.frame(in: .local).size.width / 2.0) < (geometry.frame(in: .local).size.height / 2.0))
                    //                                                  ? (geometry.frame(in: .local).size.width / 2.0) : (geometry.frame(in: .local).size.height / 2.0)))
                    //                    Circle()
                    //                        .frame(width: geometry.frame(in: .local).width * 0.0675,
                    //                               height: geometry.frame(in: .local).height * 0.0675)
                    //                        .offset(intersectionPoint(center: CGPoint(x: geometry.frame(in: .local).midX,
                    //                                                                  y: geometry.frame(in: .local).midY),
                    //                                                  angle: rotateHue(hueAngle:180.0,
                    //                                                                   stepAngle: CGFloat(30.0 * step)),
                    //                                                  radius: ((geometry.frame(in: .local).size.width / 2.0) < (geometry.frame(in: .local).size.height / 2.0))
                    //                                                  ? (geometry.frame(in: .local).size.width / 2.0) : (geometry.frame(in: .local).size.height / 2.0)))
                    //                    Circle()
                    //                        .frame(width: geometry.frame(in: .local).width * 0.0675,
                    //                               height: geometry.frame(in: .local).height * 0.0675)
                    //                        .offset(intersectionPoint(center: CGPoint(x: geometry.frame(in: .local).midX,
                    //                                                                  y: geometry.frame(in: .local).midY),
                    //                                                  angle: rotateHue(hueAngle: 270.0,
                    //                                                                   stepAngle: CGFloat(30.0 * step)),
                    //                                                  radius: ((geometry.frame(in: .local).size.width / 2.0) < (geometry.frame(in: .local).size.height / 2.0))
                    //                                                  ? (geometry.frame(in: .local).size.width / 2.0) : (geometry.frame(in: .local).size.height / 2.0)))
                    
                }
            }
            .frame(width: geometry.frame(in: .local).width, height: geometry.frame(in: .local).height)
            .border(.red, width: 3.0)
        }
    }
    
    /*
     Usage:
     
     //                        .offset(pointOnCircleToOffsetSize(point: pointOnCircle(origin: CGPoint(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY),
     //                                                                               radius: (geometry.frame(in: .local).midX < geometry.frame(in: .local).midY) ? geometry.frame(in: .local).midY : geometry.frame(in: .local).midX,
     //                                                                               angle: (360.0 / (step * CGFloat(i)))),
     //                                                                               origin: CGPoint(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)))\
     
     */
    
    func pointOnCircle(origin: CGPoint, radius: CGFloat, angle: CGFloat) -> CGPoint {
        CGPoint(
            x: origin.x + radius * cos(angle),
            y: origin.y + radius * sin(angle)
        )
    }
    
    func pointOnCircleToOffsetSize(point: CGPoint, origin: CGPoint) -> CGSize {
        return CGSize(width: abs(origin.x - point.x),
                      height: abs(origin.y - point.y))
    }
    
    func intersectionPoint(center: CGPoint, angle: CGFloat, radius: CGFloat) -> CGSize {
        let x = center.x + radius * cos(angle)
        let y = center.y + radius * sin(angle)
        return CGSize(width: abs(x - center.x), height: abs(y - center.y))
    }
    
    func normalizeHueDegrees(hueAngle: CGFloat, stepAngle: CGFloat) -> CGFloat {
        let normalizedHue = (hueAngle + stepAngle).truncatingRemainder(dividingBy: 360.0)
        return normalizedHue < 0 ? (normalizedHue + 360) / 360 : normalizedHue / 360
    }
    
    func rotateHue(hueAngle: CGFloat, stepAngle: CGFloat) -> CGFloat {
        let rotatedAngle = (hueAngle + stepAngle).truncatingRemainder(dividingBy: 360.0)
        return rotatedAngle < 0 ? (rotatedAngle + 360) / 360 : rotatedAngle / 360
    }
}

#Preview {
    CircleView()
}
