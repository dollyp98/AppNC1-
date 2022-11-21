//
//  CheckedList.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 19/11/22.
//

import SwiftUI

struct CheckedList: View {
    
    var body: some View {
        VStack {
            ScrollView {
                ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 70)
                            .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("6:30 AM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("It's time to wake up")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("7:00 AM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Walkies with Milo")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("7:30 AM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Leave for work")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("9:15 AM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Team meeting")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("12:00 AM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Lunch break")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack{
                        Text("4:00 PM")
                            .fontWeight(.light)
                            .padding(.leading)
                        Text("Weekly grocery shopping")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            
                            
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("5:00 PM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Clean flat")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("6:30 PM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Sarah's birthday party")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("10:00 PM")
                            .fontWeight(.light)
                            .padding(.horizontal)
                        Text("Take out the trash")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
                }
                ZStack (alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.teal).opacity(0.5)
                    HStack {
                        Text ("11:00 PM")
                            .fontWeight(.light)
                            .padding(.leading)
                        Text("Keep up with the \nKardashians on TV")
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            
                            
                    }
                }
            }
        }
    }
    
    
    /*@State private var tasks = [TaskList (hours : "6:30 AM", name : "It's time to wake up ⏰", isCompleted :false), TaskList (hours: "7:00 AM", name: "Walkies with Milo 🐶", isCompleted: false), TaskList (hours: "7:30 AM", name: "Leave for work", isCompleted: false), TaskList (hours: "9:15 AM", name: "Team meeting", isCompleted: false), TaskList (hours: "12:00 PM", name: "Lunch break 🍽️", isCompleted: false), TaskList (hours: "4:00 PM", name: "Weekly grocery shopping ", isCompleted: false), TaskList(hours: "5:00 PM", name: "Clean flat", isCompleted: false), TaskList (hours: "6:30 PM", name: "Sarah's birthday party 👯‍♀️", isCompleted: false), TaskList (hours: "10 PM", name: "Take out the trash", isCompleted: false), TaskList (hours: "11 PM", name: "Keep up with the Kardashians on TV", isCompleted: false)]
    
    
    var body: some View {
        VStack {
            List($tasks) { $task in
                TaskCellView(task: $task)
            }
        }
    }
*/}

struct CheckedList_Previews: PreviewProvider {
    static var previews: some View {
        CheckedList()
    }
}

/* struct TaskCellView: View {
    
    @Binding var task: TaskList
    
    var body: some View {
        HStack {
            Text(task.hours)
            Spacer()
            Text(task.name)
                .lineLimit(1)
            Spacer()
            Image(systemName: task.isCompleted ? "circle.fill" : "circle")
                .foregroundColor(.teal)
                .onTapGesture {
                    task.isCompleted.toggle()
                }
        }
    }
}*/
