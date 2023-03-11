//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Creating explicit animations
    @State private var animationAmount = 0.0
  
    var body: some View {
        Button("Tap me"){
            withAnimation{
                animationAmount += 180
            }
        }
        .padding(55)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x:0,y:1,z:0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
