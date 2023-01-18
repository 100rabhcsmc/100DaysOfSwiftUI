//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Saurabh Chavan on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false;
    @State private var scoreTitle = "";
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        //Showing the player’s score with an alert
        ZStack{
            Color.blue
                .ignoresSafeArea()
        VStack{
            Text("Here is Random number \(correctAnswer)").foregroundColor(.white)
            Text(countries[correctAnswer]).foregroundColor(.white)
            ForEach(0..<3){number in
                Button{
                    //flag is here
                    flagTapped(number)
                } label: {
                    Image(countries[number]).renderingMode(.original)
                }
            }
        }
    }
        .alert(scoreTitle,isPresented: $showingScore){
            Button("Continue",action: askQuestion)
        } message: {
            Text("Your score is ??")
        }
    }
    func flagTapped(_ number:Int){
        if number == correctAnswer{
            scoreTitle = "correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
