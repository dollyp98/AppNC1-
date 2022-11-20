//
//  TabBar.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 18/11/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            
            
            TodayView()
                .tabItem {
                    Label("Today", systemImage: "clock")
                    
                }
        }
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
