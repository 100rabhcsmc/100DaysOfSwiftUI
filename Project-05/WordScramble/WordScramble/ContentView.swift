//
//  ContentView.swift
//  WordScramble
//
//  Created by Saurabh Chavan on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    var name = ["Sach","Sau","Adi"]
    var body: some View {
        VStack{
            List{
                Section("Section 1"){
                    Text("Static row 1")
                    Text("Static row 2")
                }
                Section("Section 2"){
                    ForEach(1..<3){
                        Text("\($0)")
                    }

                }
                Section("Section 3"){
                    Text("Static row 3")
                    Text("Staic row 4")
                }
            }.listStyle(.grouped)
            
            //Best feature personally like
            List{
                Section("Section 2"){
                    ForEach(1..<3){
                        Text("\($0)")
                    }
                }
            }.listStyle(.sidebar)
            
            //insteat of right forEach we can also write this way
            List(0..<3){
               Text("Show the row \($0)")
            }.listStyle(.sidebar)
            
            
            //forEach on the varibale
            List(name,id: \.self){
                Text($0)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
