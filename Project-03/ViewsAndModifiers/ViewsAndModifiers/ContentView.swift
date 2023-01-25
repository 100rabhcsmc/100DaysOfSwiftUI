//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Saurabh Chavan on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChange = false;
    var body: some View {
        
        //Conditional modifiers
        Button("Please click & change the color"){
            colorChange.toggle()
        }.foregroundColor(colorChange ? .blue : .red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
