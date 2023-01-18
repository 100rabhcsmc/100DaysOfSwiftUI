//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        //Stacking up buttons
        ZStack{
            Color.blue
                .ignoresSafeArea()
        VStack{
            Text("Here is Random number \(correctAnswer)").foregroundColor(.white)
            Text(countries[correctAnswer]).foregroundColor(.white)
            ForEach(0..<3){number in
                Button{
                    //flag is here
                } label: {
                    Image(countries[number]).renderingMode(.original)
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
