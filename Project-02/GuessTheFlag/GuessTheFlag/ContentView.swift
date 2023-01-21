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
    @State private var userScore = 0;
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        //Upgrading our design
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.2),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26),location:0.2)], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Guess the flag?").font(.largeTitle.bold()).foregroundColor(.white)
                VStack(spacing: 15){
                    
                    Text(countries[correctAnswer]).font(.largeTitle.weight(.semibold))
                    ForEach(0..<3){number in
                        Button{
                            //flag is here
                            flagTapped(number)
                        } label: {
                            Image(countries[number]).renderingMode(.original).clipShape(Capsule()).shadow(radius: 5)
                        }
                    }
                }
                
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius:  20))
                Spacer()
                Spacer()
                
                Text(" Score \(userScore)").font(.title.bold()).foregroundColor(.white)
                Spacer()
            }
            .padding()
    }
        .alert(scoreTitle,isPresented: $showingScore){
            Button("Continue",action: askQuestion)
        } message: {
            Text("Your score is \(userScore)")
        }
    }
    func flagTapped(_ number:Int){
        if number == correctAnswer{
            userScore += 1
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
