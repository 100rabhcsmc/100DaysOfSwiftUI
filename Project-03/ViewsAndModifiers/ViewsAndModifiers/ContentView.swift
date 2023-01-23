//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Saurabh Chavan on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Why modifier order matters
        VStack{
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
            
            
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
