//
//  ContentView.swift
//  AnimatedCircles
//
//  Created by Gabriela.sillis on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false

    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(Color.black)

            ZStack {

                // MARK: - Circle Set 1
                ZStack {
                    GradientCircleView()
                        .startPoint(.top)
                        .endPoint(.bottom)
                        .yOffSet(moveInOut ? -60 : 0)


                    GradientCircleView()
                        .startPoint(.bottom)
                        .endPoint(.top)
                        .yOffSet(moveInOut ? 60 : 0)
                }
                .opacity(0.5)

                // MARK: - Circle Set 2
                ZStack {
                    GradientCircleView()
                        .startPoint(.top)
                        .endPoint(.bottom)
                        .yOffSet(moveInOut ? -60 : 0)

                    GradientCircleView()
                        .startPoint(.bottom)
                        .endPoint(.top)
                        .yOffSet(moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(60))

                // MARK: - Circle Set 3
                ZStack {
                    GradientCircleView()
                        .startPoint(.top)
                        .endPoint(.bottom)
                        .yOffSet(moveInOut ? -60 : 0)

                    GradientCircleView()
                        .startPoint(.bottom)
                        .endPoint(.top)
                        .yOffSet(moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(120))
            }
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1 : 1/4)
            .animation(
                .easeInOut.repeatForever(
                    autoreverses: true
                ).speed(1/8),
                value: moveInOut
            )
            .onAppear {
                moveInOut.toggle()
                scaleInOut.toggle()
                rotateInOut.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
