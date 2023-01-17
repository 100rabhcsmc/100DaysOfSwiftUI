//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false;
    var body: some View {
        //Showing alert messages
        Button("Click me"){
            showAlert = true
        }
        .alert("Hello SwiftUI",isPresented: $showAlert){
            Button("Cancel",role: .cancel){}
            Button("Delete",role: .destructive){}
        } message: {
            Text("here is your text")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
