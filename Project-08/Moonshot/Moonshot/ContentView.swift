//
//  ContentView.swift
//  Moonshot
//
//  Created by Saurabh Chavan on 27/03/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List(1..<30){ row in
                NavigationLink{
                    Text("Details \(row)")
                } label: {
                    Text("Row \(row)")
                }
                
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
