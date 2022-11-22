//
//  AddButtonView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 21/11/22.
//

import SwiftUI

struct AddButtonView: View {
    @State private var showModal = false
    
    var body: some View {
        ZStack {
            Button(action: { showModal = true }) {
                Image(systemName: "plus")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
            }
            offset(y: -100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .statusBar(hidden: true)
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
