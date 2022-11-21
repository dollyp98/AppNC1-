//
//  EventsRow.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 20/11/22.
//

import SwiftUI

struct EventsRow: View {
    let systemName: String
    let title: String
    
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .font(.headline)
                .imageScale(.large)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .padding(.all)
            }
        }
    }
}

struct ListItems: View {
    var body: some View {
        List {
            EventsRow(
                systemName: "birthday.cake",
                title: "Sarah's Birthday")
            EventsRow(
                systemName: "person.3",
                title: "Team Meeting")
            EventsRow(
                systemName: "medical.thermometer",
                title: "Doctor Appointment")
            EventsRow(
                systemName: "person.2", title: "Mom and Dad Anniversary")
        }
    }
}

struct EventsRow_Previews: PreviewProvider {
    static var previews: some View {
        ListItems()
    }
}
