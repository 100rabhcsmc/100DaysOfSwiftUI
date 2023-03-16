//
//  ContentView.swift
//  iExpense
//
//  Created by Saurabh Chavan on 14/03/23.
//


import SwiftUI

struct secondView:View{
    //@Environment it allows us to create properties that store values provided to us externally
    @Environment(\.dismiss) var dismiss
    let name : String
    
    var body: some View{
        VStack{
        Text("Hello \(name)")
        Button("Dismiss") {
            dismiss()
        }
    }
    }
}

struct ContentView: View {
    //Showing and hiding views
    @State private var showSheet = false
     
    var body: some View {
        Button("Show sheet"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet){
            secondView(name:"Saurabh")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
