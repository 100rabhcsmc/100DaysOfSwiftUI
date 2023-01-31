//
//  ContentView.swift
//  BetterRest
//
//  Created by Saurabh Chavan on 28/01/23.
//
import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    var body: some View {
        NavigationView{
        VStack{
            Text("When do you want to wake up?").font(.headline)
            DatePicker("Please pick a date", selection: $wakeUp,displayedComponents: .hourAndMinute).labelsHidden()
            
            Text("Desired amount of sleep?").font(.headline)
            Stepper("\(sleepAmount.formatted())", value: $sleepAmount,in: 4...12,step: 0.25)
            
            Text("Daily coffee intake?").font(.headline)
            Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups",value: $coffeeAmount,in: 1...20)
        }
        .navigationTitle("Better Rest")
        .toolbar{
            Button("Calculatar", action: calculateBedtime)
        }
    }
       
    }
    func calculateBedtime(){
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
        } catch  {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
