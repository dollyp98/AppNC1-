//
//  TodayView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 18/11/22.
//

import SwiftUI

struct TodayView: View {
    @State var progress: Double = 0
    
    var body: some View {
        VStack {
            ZStack {
                    Spacer()
                    CirclularProgressView (progress: progress)
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 170)
                    Text ("Your today’s plan is almost done!")
                        .font(.body)
                        .foregroundColor(.black)
                        .bold()
                    
                }
                .foregroundColor(.mint)
            }
        }
    }

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
