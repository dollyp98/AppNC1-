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
                    Text("Event Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Text("Buy a present at Sephora!")
                        .padding(.top)
                    Spacer()
                }
                .padding(.vertical)
                
                
                NavigationLink ("Grocery shopping 🥬") {
                    Text("Event Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Text("Buy milk, bread, carrots, lettuce, biscuits, deodorant, pasta, tomatoes, potatos, broccoli.")
                        .padding(.top)
                    Spacer()
                }
                .padding(.vertical)
                
                NavigationLink ("Team meeting 👩🏻‍💻") {
                    Text ("Event Details")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Text("Check and revise slides for new product presentation.")
                        .padding(.top)
                    Spacer()
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct EventsRow_Previews: PreviewProvider {
    static var previews: some View {
        EventsRow()
    }
}
