//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Three type of Gradients
        //1.linearGradiant
        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
        
        //2.RadialGradient
        RadialGradient(gradient:Gradient(colors: [.white,.pink]), center: .center, startRadius: 20, endRadius: 200)
        
        //3.AngularGradient
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
