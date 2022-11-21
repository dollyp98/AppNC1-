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

struct CirclularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CirclularProgressView(progress: Double())
    }
}
