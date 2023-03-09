//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Creating implicit animations
    @State private var animationAmount = 1.0
    @State private var animationAmount2 = 1.0
    
    var body: some View {
        VStack(spacing: 100){
            Button("Tap me"){
                animationAmount += 0.3
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
            )
            .scaleEffect(animationAmount)
            .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: animationAmount)
            
            
            //second
            Button("Tap me"){
                //animationAmount += 0.3
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount2)
                    .opacity(2 - animationAmount2)
                    .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: animationAmount2)
            ).onAppear {
                animationAmount2 = 2
            }
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
