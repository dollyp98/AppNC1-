//
//  TaskList.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 19/11/22.
//

import Foundation

struct TaskList: Identifiable {
    let id = UUID()
    let hours: String
    let name: String
    var isCompleted: Bool
}
