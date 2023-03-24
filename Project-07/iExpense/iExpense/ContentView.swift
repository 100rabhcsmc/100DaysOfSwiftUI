//
//  ContentView.swift
//  iExpense
//
//  Created by Saurabh Chavan on 14/03/23.
//


import SwiftUI

struct User : Codable {
    var firstName : String
    var lastName : String
}

struct ContentView: View {
    @State private var user = User(firstName: "Saurabh", lastName: "Chavan")
    var body: some View{
        VStack{
            Button("Save user") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(user){
                    UserDefaults.standard.set(data, forKey: "UserData")
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
