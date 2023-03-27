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
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Saurabh Chavan",
                "address": {
                    "street": "555, SMC Villa",
                    "city": "Pune"
                }
            }
            """

            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data){
                print(user.address.street )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
