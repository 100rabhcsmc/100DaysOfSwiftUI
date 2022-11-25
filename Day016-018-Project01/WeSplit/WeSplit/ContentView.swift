//
//  ContentView.swift
//  WeSplit
//
//  Created by Saurabh Chavan on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    let student = ["Saurabh","Sachin","Aditya"]
    
    @State private var selectedStudent = "Saurabh"
    
    var body: some View {
        NavigationView{
            Form{
                Picker("Select the student",selection: $selectedStudent){
                    ForEach(student ,id:\.self){
                        Text("Row \($0)")
                    }
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
