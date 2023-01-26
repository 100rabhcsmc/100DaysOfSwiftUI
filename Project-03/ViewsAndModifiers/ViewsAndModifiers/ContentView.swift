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
        
        //Environment modifiers
        //Define : Many modifiers can be applied to containers, which allows us to apply the same modifier to many views at the same time This is called an environment modifier.
        VStack{
            Text("Sachin").font(.largeTitle)
            //child take priority
            Text("Saurabh")
            Text("Aditya")
        }.font(.body)
        
        VStack {
            Text("Saurabh")
                .blur(radius: 0)
            Text("Sachin")
        }
        .blur(radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
