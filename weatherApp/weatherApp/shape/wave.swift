//
//  wave.swift
//  weatherApp
//
//  Created by shashwat singh on 11/08/24.
//

import SwiftUI

struct wave:  Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.75, y: rect.midY),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 1.25)
        )
        path.closeSubpath()
        
        
        return path
    }
}

#Preview {
    wave()
        .stroke(Color.blue,lineWidth: 5)
        .frame(height: 400)
        .padding()
}
