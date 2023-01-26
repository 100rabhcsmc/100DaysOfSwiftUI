//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Saurabh Chavan on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    let FirstName = Text("Saurabh")
    let LastName = Text("Chavan")
    
    @ViewBuilder var Name:some View{
        Text("Saurabh")
        Text("Chavan")
    
    }
    var body: some View {
        //Views as properties
        FirstName.foregroundColor(.red)
        LastName.foregroundColor(.blue)
        Name
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
