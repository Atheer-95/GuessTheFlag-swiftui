//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Atheer Othman on 18/10/1443 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
            ZStack{
                
                
                LinearGradient(gradient: Gradient(colors: [
                    .indigo, Color(red: 0.76, green: 0.15, blue: 0.26)
                ]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .ignoresSafeArea()
                VStack(spacing: 60){
                Text("Guess The Flag")
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.bold))
                VStack(spacing: 15){
                    
                    VStack{
                        Text("Tap the Flag of")
                            .foregroundColor(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundColor(.white )
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            // flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule() )
                        }
                    }
                }
            }
               
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(" your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        }else{
            scoreTitle = "Wrong " + "That's Flag of \(countries[number])!"
        }
        showingScore = true
    }
    
    func askQuestion(){

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
