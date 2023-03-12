//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Controlling the animation stack
    @State private var enabled = false
  
    var body: some View {
        Button("Tap me"){
           //tap me
            print("Clicked")
            enabled.toggle()
        }
    
        .frame(width: 200,height: 200)
        .padding(15)
        .background(enabled ? .red  : .blue)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 20, damping: 2), value: enabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
