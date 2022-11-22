//
//  ContentView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 18/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            ListItems()
        }
        .overlay(AddButtonView()
            .padding(.trailing, 40)
            .offset(x: 0, y: 70),
             alignment: .topTrailing)
        .ignoresSafeArea()
    }
}

struct MultiDatePickerStart: View {
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    var bounds: PartialRangeFrom<Date> {
        let start = calendar.date(
            from: DateComponents(
                timeZone: timeZone,
                year: 2022,
                month: 6,
                day: 20)
        )!
        
        return start...
        
    }
    
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        MultiDatePicker("Dates Available", selection: $dates, in: bounds)
        
            .fixedSize()
    }
}

struct MultiDatePickerEnd: View {
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    var bounds: PartialRangeUpTo<Date> {
        let end = calendar.date(
            from: DateComponents(
                timeZone: timeZone,
                year: 2022,
                month: 6,
                day: 20)
        )!
        
        return ..<end
        
    }
    
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        MultiDatePicker("Dates Available", selection: $dates, in: bounds)
        
            .fixedSize()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
