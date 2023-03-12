//
//  ContentView.swift
//  Animations
//
//  Created by Saurabh Chavan on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    //Animating gestures
    @State private var isShowingRed = false
    
  
    var body: some View {
        VStack{
            Button("Tape me"){
                withAnimation{
                    isShowingRed.toggle()
                }
            }
            if isShowingRed{
                Rectangle()
                    .fill(.red)
                    .frame(width: 200,height: 200)
                    //.transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
