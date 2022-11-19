//
//  CheckedList.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 19/11/22.
//

import SwiftUI

struct CheckedList: View {
    
    @State private var tasks = [TaskList (hours : "6:30 AM", name : "It's time to wake up ⏰", isCompleted : false), TaskList (hours: "7:00 AM", name: "Walkies with Milo 🐶", isCompleted: false), TaskList (hours: "7:30 AM", name: "Leave for work", isCompleted: false), TaskList (hours: "9:15 AM", name: "Team meeting", isCompleted: false), TaskList (hours: "12:00 PM", name: "Lunch break 🍽️", isCompleted: false), TaskList (hours: "4:00 PM", name: "Weekly grocery shopping ", isCompleted: false), TaskList(hours: "5:00 PM", name: "Clean flat", isCompleted: false), TaskList (hours: "6:30 PM", name: "Sarah's birthday party 👯‍♀️", isCompleted: false), TaskList (hours: "10 PM", name: "Take out the trash", isCompleted: false)]
    
    var body: some View {
        VStack {
            List($tasks) { $task in
                TaskCellView(task: $task)
            }
        }
    }
}

struct CheckedList_Previews: PreviewProvider {
    static var previews: some View {
        CheckedList()
    }
}

struct TaskCellView: View {
    
    @Binding var task: TaskList
    
    var body: some View {
        HStack {
            Text(task.hours)
            Text(task.name)
            Spacer()
            Image(systemName: task.isCompleted ? "circle.fill" : "circle")
                .foregroundColor(.teal)
                .onTapGesture {
                    task.isCompleted.toggle()
                }
        }
    }
}
