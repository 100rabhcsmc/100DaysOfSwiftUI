//
//  ContentView.swift
//  iExpense
//
//  Created by Saurabh Chavan on 14/03/23.
//


import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()

       var body: some View {
           NavigationView {
               List {
                   ForEach(expenses.items) { item in
                       Text(item.name)
                   }
                   .onDelete(perform: removeItem)
               }
               .navigationTitle("iExpense")
               .toolbar {
                   Button {
                       let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                       expenses.items.append(expense)
                   } label: {
                       Image(systemName: "plus")
                   }
               }
           }
       }
    
    func removeItem(at offsets:IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}
    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
