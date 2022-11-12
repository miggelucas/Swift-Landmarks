//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 11/11/22.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width : CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                path.move (to: CGPoint(x : width * 0.95,
                                       y : height * (0.20 + HexagonParameters.adjustment))
                )
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(x : width * segment.line.x,
                                             y : height * segment.line.y
                                            )
                    )
                    
                    path.addQuadCurve(to: CGPoint(x: width * segment.line.x,
                                                  y: height * segment.line.y
                                                 ),
                                      control: CGPoint(x: width * segment.curve.x,
                                                       y: height * segment.curve.y
                                                      )
                    )
                }
                
            }
            .fill(.black)
        }
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
