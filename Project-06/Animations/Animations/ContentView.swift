//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Animating bindings
    @State private var animationAmount = 1.0
  
    var body: some View {
        print(animationAmount)
         return VStack{
             Stepper("Scale Amount", value: $animationAmount.animation(.easeInOut(duration: 1).repeatCount(3,autoreverses: true)),in: 1...10)
            Spacer()
            Button("Tap me"){
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
