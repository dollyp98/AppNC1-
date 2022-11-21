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
                Text ("Add")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
            }
        }
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
