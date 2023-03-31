//
//  ContentView.swift
//  Moonshot
//
//  Created by Saurabh Chavan on 27/03/23.
//

import SwiftUI

struct User : Codable{
    let name : String
    let address : Address
}

struct Address:Codable {
    let street : String
    let city : String
}

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout) {
                ForEach(0..<100) {
                    Text("\($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
