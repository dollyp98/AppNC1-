//
//  EventsRow.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 20/11/22.
//

import SwiftUI

struct EventsRow: View {
    @State private var events = ["Sarah's birthday🥳", "Grocery shopping 🥬", "Team meeting 👩🏻‍💻"]
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink ("Sarah's birthday 🥳") {
                    Text("Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 600.0)
                    Text("Buy a present at Sephora!")
                }
                NavigationLink ("Grocery shopping 🥬") {
                    Text("Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 600.0)
                    Text("Buy milk, bread, carrots, lettuce, biscuits, deodorant, pasta, tomatoes, potatos, broccoli.")
                }
                NavigationLink ("Team meeting 👩🏻‍💻") {
                    Text ("Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 600.0)
                    Text("Check and revise slides for new product presentation.")
                }
                //.onDelete(perform: deleteEvents)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    func deleteEvents( at offsets: IndexSet) {
        events.remove(atOffsets: offsets)
    }
}

struct EventsRow_Previews: PreviewProvider {
    static var previews: some View {
        EventsRow()
    }
}
