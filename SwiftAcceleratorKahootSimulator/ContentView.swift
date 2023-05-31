///
//  ContentView.swift
//  SwiftAcceleratorKahootSimulator
///
//  Created by Venkatesh Devendran on 5/3/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var CurrentQuestionIndex: Int = 0
    @State private var ChosenOption: Int = 0
    @State private var question: String = questions[0].question
    @State private var answerWasCorrect: Bool = false
    @State private var score: Int = 0
    @State private var showScore: Bool = false
    @State private var showScreen: Bool = false
    var body: some View {

        VStack {
            Text("Score: " + String(score))
                .padding(.bottom, 150)
            
            Text(question)
            
            
            
            //OPtion1
            Button{
                ChosenOption = 1
                answerWasCorrect = false
                showScreen = false
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                    score += 10
                }
                else{
                    CurrentQuestionIndex += 1
                }
                
                showScreen = true
                
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option1)
            }
            
            //OPtion2
            Button{
                ChosenOption = 2
                answerWasCorrect = false
                showScreen = false
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                    score += 10
                }
                else{
                    CurrentQuestionIndex += 1
                }
                
                showScreen = true
                
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option2)
            }
            
            //option3
            Button{
                ChosenOption = 3
                answerWasCorrect = false
                showScreen = false
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                    score += 10
                }
                else{
                    CurrentQuestionIndex += 1
                }
                
                showScreen = true
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option3)
            }
            
            //option4
            Button{
                ChosenOption = 4
                answerWasCorrect = false
                showScreen = false
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                    score += 10
                }
                else{
                    CurrentQuestionIndex += 1
                }
                
                showScreen = true
                
                question = questions[CurrentQuestionIndex].question
                
            }label: {
                Text(questions[CurrentQuestionIndex].option4)
            }
        }
        .padding()
        .sheet(isPresented: $showScreen){ 
            if(answerWasCorrect){
                Text("Correct!")
            }
            else{
                Text("Incorrect!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
