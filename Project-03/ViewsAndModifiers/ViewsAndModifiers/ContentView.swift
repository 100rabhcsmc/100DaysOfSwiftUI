//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Saurabh Chavan on 22/01/23.
//

import SwiftUI

struct Name: View {
    var text:String
    var body: some View {
        Text(text)
            .font(.title)
            .padding()
//            .foregroundColor(.red)
            .background(.green).clipShape(Capsule())
    }
}

struct ContentView: View {
   
    var body: some View {
        //View composition
        //view break into small part
        VStack (spacing: 20){
//            Text("First").font(.title).padding().foregroundColor(.red).background(.green).clipShape(Capsule())
//
//            Text("Second").font(.title).padding().foregroundColor(.red).background(.green).clipShape(Capsule())
            
            Name(text: "saurabh").foregroundColor(.white)
            Name(text: "Sachin").foregroundColor(.purple)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
