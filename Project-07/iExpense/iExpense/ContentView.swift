//
//  ContentView.swift
//  iExpense
//
//  Created by Saurabh Chavan on 14/03/23.
//


import SwiftUI

struct ContentView: View {
    //One common way to store a small amount of datais called UserDefaults
    @AppStorage("tapCount") private var tapCount = 0

        var body: some View {
            Button("Tap count: \(tapCount)") {
                tapCount += 1
            }
        }
       
}
    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
