//
//  AddNewTask.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 23/11/22.
//

import SwiftUI

struct NewTaskList: View {
    let systemName: String
    let hours: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
            VStack (alignment: .leading){
            Text(hours)
                Text(title)
            }
        }
    }
}
struct AddNewTask: View {
    var body: some View {
        List {
            NewTaskList(systemName: "clock", hours: "6:00 AM", title: "It's time to wake up")
            NewTaskList(systemName: "bag", hours: "11:00 AM", title: "Xmas Shopping")
        }
        .listStyle(PlainListStyle())
    }
}
struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask()
    }
}
