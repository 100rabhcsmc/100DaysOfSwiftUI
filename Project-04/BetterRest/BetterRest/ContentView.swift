//
//  ContentView.swift
//  BetterRest
//
//  Created by Saurabh Chavan on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    //Selecting dates and times with DatePicker
    @State private var wakeUp = Date.now;
    var body: some View {
        VStack{
            Text("Hello \(wakeUp.formatted())")
            DatePicker("Please select the date & time", selection: $wakeUp)
            
            DatePicker("Please select the date & time", selection: $wakeUp)
            //label taking space
                .labelsHidden()
            
            //show me the date or time
            DatePicker("Please give me the  date or time", selection: $wakeUp,displayedComponents: .date)
            DatePicker("Please give me the  date or time", selection: $wakeUp,displayedComponents: .hourAndMinute)
            
            //we can select only future dates
            DatePicker("Please select the date & time", selection: $wakeUp,in:Date.now...)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
