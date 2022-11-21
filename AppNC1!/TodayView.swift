//
//  TodayView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 18/11/22.
//

import SwiftUI

struct TodayView: View {
    @State var progress: Double = 0.6
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 200)
                    .foregroundColor(.teal)
                    .shadow(radius: 22)
                Text ("Your today’s plan is almost done!")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.leading, -130.0)
                    .frame(width: 123.0, height: 100.0)
                
                Spacer()
                
                
                HStack {
                    ZStack {
                        CirclularProgressView (progress: progress)
                        
                        
                    }
                    .padding(.leading, 170.0)
                }
            }
            Text ("Today's Schedule")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 70.0)
                .frame(height: 57.0)
            
            CheckedList()
            
        }
    }
}


struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
