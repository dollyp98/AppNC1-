//
//  CirclularProgressView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 18/11/22.
//

import SwiftUI

struct CirclularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke( // 1
                    Color.white.opacity(0.8),
                    lineWidth: 10
                )
                .frame(width: 100, height: 130)
            
            Circle() // 2
                .trim(from: 0, to: progress)
                .stroke(
                    Color.white,
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
            
                .frame(width: 100, height: 130)
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
        }
    }
}

struct ProgressView: View {
    @State var progress: Double = 0
    
    var body: some View {
            VStack {
                Spacer()
                ZStack {
                    // 2
                    CirclularProgressView(progress: progress)
                    // 3
                    Text("\(progress * 100, specifier: "%.0f")")
                        .font(.largeTitle)
                        .bold()
                }.frame(width: 200, height: 200)
                Spacer()
                HStack {
                    // 4
                    Slider(value: $progress, in: 0...1)
                    // 5
                    Button("Reset") {
                        resetProgress()
                    }.buttonStyle(.borderedProminent)
                }
            }
        }

func resetProgress() {
        progress = 0
    }
}

struct CirclularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CirclularProgressView(progress: Double())
    }
}
