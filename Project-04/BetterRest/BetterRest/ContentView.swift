//
//  ContentView.swift
//  BetterRest
//
//  Created by Saurabh Chavan on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    //Entering numbers with Stepper
    @State private var sleepAmount = 8.0;
    var body: some View {
        Stepper(" \(sleepAmount.formatted())", value: $sleepAmount,in: 4...12,step: 0.25)
        //in:4...12 means we can go upto 12 and below 4
        //step:0.25 means when we click in plus button value increase by 0.25 same for the minus
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
