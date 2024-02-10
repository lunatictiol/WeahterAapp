//
//  BlobShape.swift
//  WeatherApp
//
//  Created by sabiq on 08/02/24.
//

import SwiftUI
struct BlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49536*width, y: 0.00107*height))
        path.addCurve(to: CGPoint(x: 0.66801*width, y: 0.05525*height), control1: CGPoint(x: 0.5562*width, y: 0.00277*height), control2: CGPoint(x: 0.61212*width, y: 0.03127*height))
        path.addCurve(to: CGPoint(x: 0.82267*width, y: 0.14151*height), control1: CGPoint(x: 0.72274*width, y: 0.07874*height), control2: CGPoint(x: 0.77758*width, y: 0.10271*height))
        path.addCurve(to: CGPoint(x: 0.93208*width, y: 0.2825*height), control1: CGPoint(x: 0.86818*width, y: 0.18068*height), control2: CGPoint(x: 0.90322*width, y: 0.22994*height))
        path.addCurve(to: CGPoint(x: 0.99378*width, y: 0.45306*height), control1: CGPoint(x: 0.96145*width, y: 0.33597*height), control2: CGPoint(x: 0.98504*width, y: 0.39274*height))
        path.addCurve(to: CGPoint(x: 0.98346*width, y: 0.63736*height), control1: CGPoint(x: 1.00267*width, y: 0.51448*height), control2: CGPoint(x: 1.00144*width, y: 0.57794*height))
        path.addCurve(to: CGPoint(x: 0.89002*width, y: 0.79585*height), control1: CGPoint(x: 0.96555*width, y: 0.69652*height), control2: CGPoint(x: 0.93066*width, y: 0.74916*height))
        path.addCurve(to: CGPoint(x: 0.74892*width, y: 0.90687*height), control1: CGPoint(x: 0.85043*width, y: 0.84135*height), control2: CGPoint(x: 0.80126*width, y: 0.87674*height))
        path.addCurve(to: CGPoint(x: 0.58413*width, y: 0.97195*height), control1: CGPoint(x: 0.69732*width, y: 0.93657*height), control2: CGPoint(x: 0.64185*width, y: 0.95717*height))
        path.addCurve(to: CGPoint(x: 0.40215*width, y: 0.99564*height), control1: CGPoint(x: 0.52437*width, y: 0.98725*height), control2: CGPoint(x: 0.46279*width, y: 1.007*height))
        path.addCurve(to: CGPoint(x: 0.24128*width, y: 0.90771*height), control1: CGPoint(x: 0.34152*width, y: 0.98428*height), control2: CGPoint(x: 0.29045*width, y: 0.94483*height))
        path.addCurve(to: CGPoint(x: 0.11913*width, y: 0.78199*height), control1: CGPoint(x: 0.19422*width, y: 0.87218*height), control2: CGPoint(x: 0.15731*width, y: 0.82687*height))
        path.addCurve(to: CGPoint(x: 0.01051*width, y: 0.63644*height), control1: CGPoint(x: 0.07956*width, y: 0.73547*height), control2: CGPoint(x: 0.02915*width, y: 0.69451*height))
        path.addCurve(to: CGPoint(x: 0.01407*width, y: 0.45464*height), control1: CGPoint(x: -0.00818*width, y: 0.57821*height), control2: CGPoint(x: 0.00424*width, y: 0.51498*height))
        path.addCurve(to: CGPoint(x: 0.06749*width, y: 0.28688*height), control1: CGPoint(x: 0.02359*width, y: 0.39624*height), control2: CGPoint(x: 0.04424*width, y: 0.34133*height))
        path.addCurve(to: CGPoint(x: 0.15424*width, y: 0.12642*height), control1: CGPoint(x: 0.09157*width, y: 0.2305*height), control2: CGPoint(x: 0.10995*width, y: 0.16895*height))
        path.addCurve(to: CGPoint(x: 0.31891*width, y: 0.04547*height), control1: CGPoint(x: 0.19869*width, y: 0.08374*height), control2: CGPoint(x: 0.26099*width, y: 0.06676*height))
        path.addCurve(to: CGPoint(x: 0.49536*width, y: 0.00107*height), control1: CGPoint(x: 0.37632*width, y: 0.02438*height), control2: CGPoint(x: 0.4342*width, y: -0.00064*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BlobShape()
}
