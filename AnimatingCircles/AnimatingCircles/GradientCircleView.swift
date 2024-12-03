//
//  GradientCircleViewView.swift
//  AnimatingCircles
//
//  Created by Gabriela.sillis on 03/12/24.
//

import SwiftUI

struct GradientCircleView: View {
    private var startPoint: UnitPoint = .top
    private var endPoint: UnitPoint = .bottom
    private var yOffSet: CGFloat = 0

    var body: some View {
        Circle()
            .fill(LinearGradient(
                gradient: Gradient(colors: [.green, .white]),
                startPoint: startPoint,
                endPoint: endPoint
            ))
            .frame(width: 120, height: 120)
            .offset(y: yOffSet)
    }

    // MARK: - Builder Methods

    func startPoint(_ point: UnitPoint) -> GradientCircleView {
        var copy = self
        copy.startPoint = point
        return copy
    }

    func endPoint(_ point: UnitPoint) -> GradientCircleView {
        var copy = self
        copy.endPoint = point
        return copy
    }

    func yOffSet(_ yOffSet: CGFloat) -> GradientCircleView {
        var copy = self
        copy.yOffSet = yOffSet
        return copy
    }
}

#Preview {
    GradientCircleView()
}
