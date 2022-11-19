//
//  EventList.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 19/11/22.
//

import SwiftUI

struct EventListView: View {
        
        let name: String
        
        var body: some View {
            Text("birthday.cake: \(name)")
            
        }
    }

    struct MainEvents: View {
        var body: some View {
            List {
                EventListView(name: "Sarah's Birthday 🥳")
                EventListView(name: "Grocery shopping")
                EventListView(name: "Team meeting")
            }
        }
    }


struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
