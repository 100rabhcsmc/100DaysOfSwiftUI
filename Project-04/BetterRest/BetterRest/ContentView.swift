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
        Text(Date.now.formatted(date: .long, time: .shortened))
        
    }
    
    //how apple work for us to pick date
    
    func trivialExample(){
        var now = Date.now
        var tommarow = Date.now.addingTimeInterval(86400)
        var range = now...tommarow
        print("range\(range)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
