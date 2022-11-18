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
                    Color.orange.opacity(0.5),
                    lineWidth: 20
                )
                .frame(width: 200, height: 200)
            
            Circle() // 2
                .trim(from: 0, to: progress)
                .stroke(
                    Color.orange,
                    style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round
                    )
                )
            
                .frame(width: 200, height: 200)
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
