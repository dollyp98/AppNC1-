//
//  AddButtonView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 21/11/22.
//

import SwiftUI

struct AddButtonView: View {
    
    var body: some View {
        ZStack {
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .padding(.bottom, 400.0)
                            .font(.system(size: 25, weight: .regular, design: .rounded))
                }
        }
        .padding([.leading, .bottom], 300.0)
        
        }
    }

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
