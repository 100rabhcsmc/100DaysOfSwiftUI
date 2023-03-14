//
//  ContentView.swift
//  iExpense
//
//  Created by Saurabh Chavan on 14/03/23.
//

import SwiftUI

struct User {
    var firstname = "Saurabh"
    var lastname = "chavan"
}

struct ContentView: View {
    @State private var users = User()
    var body: some View {
        VStack {
            Text("Hello \(users.firstname) \(users.lastname)")
            
            TextField("First name", text: $users.firstname)
            TextField("Last Name", text: $users.lastname)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
