//
//  ContentView.swift
//  WeSplit
//
//  Created by Saurabh Chavan on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

    
    var body: some View {
           NavigationView {

               Form{
                   Section{
                       TextField("Enter Name", value: $checkAmount,format: .currency(code: Locale.current.currencyCode ?? "INR")).keyboardType(.decimalPad)
                       
                   }
                   
                   Section{
                       Picker("Tip Percentage",selection: $tipPercentage){
                           ForEach(tipPercentages,id: \.self){
                               Text($0,format: .percent)
                           }
                       }
                       .pickerStyle(.segmented)
                   } header: {
                       Text("How much tip do you want to leave?")
                   }
                   
                   Picker("Number of People",selection: $numberOfPeople){
                       ForEach(2 ..< 100){
                           Text("\($0) Peoples")
                       }
                   }
                   
                   Section{
                       Text(totalPerPerson,format: .currency(code: Locale.current.currencyCode ?? "INR"))
                   }
               }
               .navigationTitle("WeSplit")
               
           }
       }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
