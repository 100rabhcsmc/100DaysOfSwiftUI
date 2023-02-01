//
//  ContentView.swift
//  BetterRest
//
//  Created by Saurabh Chavan on 28/01/23.
//
import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeUptime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var alertTitle = ""
    @State private var alertMessage =  ""
    @State private var showAlert = false
    
    static var defaultWakeUptime : Date {
        var component = DateComponents()
        component.hour = 7
        component.minute = 0
        return Calendar.current.date(from: component) ?? Date.now
    }
    
    var body: some View {
        NavigationView{
        Form{
            VStack(alignment: .leading,spacing: 0){
                Text("When do you want to wake up?").font(.headline)
                DatePicker("Please pick a date", selection: $wakeUp,displayedComponents: .hourAndMinute).labelsHidden()
            }
            
            VStack(alignment: .leading,spacing: 0){
                Text("Desired amount of sleep?").font(.headline)
                Stepper("\(sleepAmount.formatted())", value: $sleepAmount,in: 4...12,step: 0.25)
            }
            
            VStack(alignment: .leading, spacing: 0){
                Text("Daily coffee intake?").font(.headline)
                Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups",value: $coffeeAmount,in: 1...20)
            }
        }
        .navigationTitle("Better Rest")
        .toolbar{
            Button("Calculatar", action: calculateBedtime)
        }
        .alert(alertTitle, isPresented: $showAlert){
            Button("okay"){}
        } message: {
            Text(alertMessage)
        }
    }
       
    }
    func calculateBedtime(){
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let component = Calendar.current.dateComponents([.hour,.minute], from: wakeUp)
            let hour =  (component.hour ?? 0) * 60 * 60
            let minutes = (component.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour+minutes), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTIme = wakeUp - prediction.actualSleep
            alertTitle = "Your ideal time is ..."
            alertMessage = sleepTIme.formatted(date: .omitted, time: .shortened)
        } catch  {
            alertTitle = "Error"
            alertMessage = "Sorry, there is problem to calculate bedtime"
            
        }
        showAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
