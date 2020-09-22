//
//  ContentView.swift
//  DatePickerInSwiftUI
//
//  Created by Ramill Ibragimov on 22.09.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    @State private var selectedDateWheel = Date()
    
    var body: some View {
        VStack {
            DatePicker("Selected Date", selection: $selectedDate)
                .datePickerStyle(CompactDatePickerStyle())
        
            DatePicker("Selected Date", selection: $selectedDateWheel)
                .datePickerStyle(WheelDatePickerStyle())
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
