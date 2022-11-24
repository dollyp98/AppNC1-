//
//  CheckedList.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 19/11/22.
//

import SwiftUI

struct CheckedList: View {
    
    @State private var showAnimation = false
    @State private var tasks = [TaskList (hours : "6:30 AM", name : "It's time to wake up ⏰", isCompleted :false), TaskList (hours: "7:00 AM", name: "Walkies with Milo 🐶", isCompleted: false), TaskList (hours: "7:30 AM", name: "Leave for work", isCompleted: false), TaskList (hours: "9:15 AM", name: "Team meeting", isCompleted: false), TaskList (hours: "12:00 PM", name: "Lunch break 🍽️", isCompleted: false), TaskList (hours: "4:00 PM", name: "Weekly \ngrocery shopping", isCompleted: false), TaskList(hours: "5:00 PM", name: "Clean flat", isCompleted: false), TaskList (hours: "6:30 PM", name: "Sarah's birthday \nparty 👯‍♀️", isCompleted: false), TaskList (hours: "10 PM", name: "Take out the trash", isCompleted: false), TaskList (hours: "11 PM", name: "Keep up with the \n Kardashians on TV", isCompleted: false)]
    
    
    var body: some View {
        ZStack {
            VStack {
                List($tasks) { $task in
                    TaskCellView(task: $task, tasks : tasks)
                        .onTapGesture {
                            task.isCompleted.toggle()
                            showAnimation = alltaskchecked(tasks: tasks)
                            
                        }
                }
            }
            .listStyle(PlainListStyle())
            if showAnimation {
                AnimationView()
            }
            
        }
    }
    
    func alltaskchecked(tasks : [TaskList]) -> Bool {
        var allChecked = true
        for task in tasks {
            if task.isCompleted == false {
                allChecked = false
            }
        }
        return allChecked
    }
}

struct CheckedList_Previews: PreviewProvider {
    static var previews: some View {
        CheckedList()
    }
}

struct TaskCellView: View {
    
    @Binding var task: TaskList
    let tasks : [TaskList]

    
    var body: some View {
        HStack {
            Text(task.hours)
                .fontWeight(.light)
            Spacer()
            Text(task.name)
                .multilineTextAlignment(.center)
                .padding(.top)
            Spacer()
            Image(systemName: task.isCompleted ? "circle.fill" : "circle")
            
                .foregroundColor(.teal)
        }
    }
    

}
