//
//  ContentView.swift
//  ColorCombinationControl
//
//  Created by Xcode Developer on 5/6/24.
//

import SwiftUI
import CoreGraphics

func CircleMarkerWheel(containerSize: CGSize, groupCount: Int) -> Void {
    for i in 0..<groupCount {
        print("\(i)\n----------------------------------------------")
        for j in 0...groupCount {
            print("\t\(j)")
            let angle = 90.0 * Double(j) + 30.0 * Double(i)
            let tag = i * (groupCount + 1) + j
            print("\t\ttag  \t\(i)\t+\t\(j)\t=\t\(tag)")
            print("\t\tangle\t\(i)\t+\t\(j)\t=\t\(angle)")
        }
        print("\n")
    }
}


struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            //            ZStack {
            //                CircleMarkerGroup(containerSize: geometry.size, rotationInterval: 30.0, circleCount: 12)
            //            }
            
            CircleView()
            
            ZStack {
                //                VStack {
                //                    ForEach (0..<3) { number in
                //                        Text("\(number)")
                //                    }
                //                }
                
                //                ColorCombinationLines(containerSize: CGSize(width: 360.0, height: 360.0))
                
                
                ZStack {
                    Group {
                        Rectangle()
                            .rotationEffect(Angle(degrees: 360.0))
                        
                        Rectangle()
                            .rotationEffect(Angle(degrees: 30.0))
                        
                        Rectangle()
                            .rotationEffect(Angle(degrees: 60.0))
                        
                        Rectangle()
                            .rotationEffect(Angle(degrees: 90.0))
                        
                        Rectangle()
                            .rotationEffect(Angle(degrees: 120.0))
                        
                        Rectangle()
                            .rotationEffect(Angle(degrees: 150.0))
                    }
                    .frame(width: 1, height: 180.0)
                    
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: -90.0)
                        .foregroundColor(Color(hue: 0.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 90.0, y: 0)
                        .foregroundColor(Color(hue: Angle(degrees: 360.0 - 90.0).degrees /* / 360.0*/, saturation: 1.0, brightness: 1.0))
                    
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: 90.00)
                        .foregroundColor(Color(hue: 180.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: -90.0, y: 0)
                        .foregroundColor(Color(hue: 270.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                }
                .frame(width: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))),
                       height: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))))
                .rotationEffect(Angle(degrees: 0.0))
                .background(.clear.opacity(0.0))
                
                ZStack {
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: -90.0)
                        .foregroundColor(Color(hue: 30.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 90.0, y: 0)
                        .foregroundColor(Color(hue: 120.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: 90.00)
                        .foregroundColor(Color(hue: 210.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: -90.0, y: 0)
                        .foregroundColor(Color(hue: 300.0 / 360.0, saturation: 1.0, brightness: 1.0))
                }
                .frame(width: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))),
                       height: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))))
                .rotationEffect(Angle(degrees: 30.0))
                .background(.clear.opacity(0.0))
                
                ZStack {
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: -90.0)
                        .foregroundColor(Color(hue: 60.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 90.0, y: 0)
                        .foregroundColor(Color(hue: 150.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: 0, y: 90.00)
                        .foregroundColor(Color(hue: 240.0 / 360.0, saturation: 1.0, brightness: 1.0))
                    
                    Circle()
                        .frame(width: 30.0, height: 30.0)
                        .offset(x: -90.0, y: 0)
                        .foregroundColor(Color(hue: 330.0 / 360.0, saturation: 1.0, brightness: 1.0))
                }
                .frame(width: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))),
                       height: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))))
                .rotationEffect(Angle(degrees: 60.0))
                .background(.clear.opacity(0.0))
            }
        }
    }
}

//struct ColorCombinationControl: View {
//    var body: some View {
//        ColorCombinationLines(containerSize: CGSize(width: 360.0, height: 360.0))
//    }
//}
//
//@ViewBuilder
//private func ColorCombinationLines(containerSize: CGSize) -> some View {
//    ZStack {
//        Group {
//            ForEach (1 ..< 7) { angleIncrement in
//                HStack {
//                    Rectangle()
//                        .frame(width: 1, height: containerSize.height)
//                        .rotationEffect(Angle(degrees: ((360.0 / Double(angleIncrement)) / 360.0)))
//                        .foregroundColor(Color.init(Color(hue: ((360.0 / Double(angleIncrement)) / 360.0), saturation: 1.0, brightness: 1.0)))
//
//                    Text("\(angleIncrement)")
//                        .foregroundStyle(.regularMaterial)
//                        .border(.red)
//                        .frame(width: containerSize.width, height: containerSize.width)
//                }
//                .frame(width: containerSize.width, height: containerSize.width)
//            }
//        }
//        .frame(width: containerSize.width, height: containerSize.width)
//    }
//    .frame(width: containerSize.width, height: containerSize.height)
//    .border(.green)
//}

//        @ViewBuilder
//        private func CircleMarkerGroup(containerSize: CGSize, rotationInterval: CGFloat, circleCount: Int) -> some View {
//            ForEach(0..<4, id: \.self) { i in
//                ZStack {
//                    Group {
//                        Circle().tag(0.0 + Int(rotationInterval * Double(i)))
//                            .offset(x: 0, y: -90.0)
//                            .foregroundColor(Color(hue: ((0.0 + (rotationInterval * Double(i))) / 360.0), saturation: 1.0, brightness: 1.0))
//
//                        Circle().tag(Int(90.0 + Int(rotationInterval * Double(i))))
//                            .offset(x: 90.0, y: 0)
//                            .foregroundColor(Color(hue: ((90.0 + (rotationInterval * Double(i))) / 360.0), saturation: 1.0, brightness: 1.0))
//
//
//                        Circle().tag(Int(180.0 + Int(rotationInterval * Double(i))))
//                            .offset(x: 0, y: 90.00)
//                            .foregroundColor(Color(hue: ((180.0 + (rotationInterval * Double(i))) / 360.0), saturation: 1.0, brightness: 1.0))
//
//                        Circle().tag(Int(270.0 + Int(rotationInterval * Double(i))))
//                            .offset(x: -90.0, y: 0)
//                            .foregroundColor(Color(hue: ((270.0 + (rotationInterval * Double(i))) / 360.0), saturation: 1.0, brightness: 1.0))
//                    }
//                    .frame(width: rotationInterval, height: rotationInterval)
//                }
//                .background(.clear.opacity(0.0))
//                .frame(width: ((((containerSize.width < containerSize.height) ? containerSize.width : containerSize.height))),
//                       height: ((((containerSize.width < containerSize.height) ? containerSize.width : containerSize.height))))
//                .rotationEffect(Angle(degrees: 360.0 / Double(i)))
//            }
//        }

struct CircleMarker: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 30, height: 30)
            .foregroundColor(color)
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}


















////
////  ContentView.swift
////  ColorCombinationControl
////
////  Created by Xcode Developer on 5/6/24.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            GeometryReader { geometry in
////                ZStack {
//                    ForEach(0..<12, id: \.self) { i in
//                        HStack (alignment: .top, content: {
//                            Circle()
//                                .frame(width: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.125)),
//                                       height: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.125)))
//                                .overlay {
//                                    Text("\(i)")
//                                        .foregroundStyle(.ultraThinMaterial)
//                                }
//                                .offset(x: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.5) - ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.125) * (1.0 / i))),
//                                        y: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.5) - ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.125) * (1.0 - (1.0 / i)))))
//                        })
//                        .frame(width: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.875)),
//                               height: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.875)))
////                        .rotationEffect(Angle(degrees: ((360.0 / 12.0) * Double(i))), anchor: UnitPoint(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5))
//                        .border(.red)
//                    }
//                    .frame(width: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.875)),
//                           height: ((((geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height) * 0.875)))
//                    //                    .border(.blue)
//
////                }/
//            }
//        }
//        .frame(width: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))),
//               height: ((((UIScreen.main.bounds.size.width < UIScreen.main.bounds.size.height) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height))))
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}
