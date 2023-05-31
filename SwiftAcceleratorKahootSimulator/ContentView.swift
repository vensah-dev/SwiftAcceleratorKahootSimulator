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
    var body: some View {

        VStack {
            Text(question)
            
            //OPtion1
            Button{
                ChosenOption = 1
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                }
                else{
                    print("nah")
                }
                
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option1)
            }
            
            //OPtion2
            Button{
                ChosenOption = 2
                
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                }
                else{
                    print("nah")
                }
                
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option2)
            }
            
            //option3
            Button{
                ChosenOption = 3
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                }
                else{
                    print("nah")
                }
                
                question = questions[CurrentQuestionIndex].question
            }label: {
                Text(questions[CurrentQuestionIndex].option3)
            }
            
            //option4
            Button{
                ChosenOption = 4
                
                
                if(CurrentQuestionIndex == 0){
                    CurrentQuestionIndex = 1
                }
                
                if(ChosenOption == questions[CurrentQuestionIndex].correctOption){
                    answerWasCorrect = true
                }
                if(answerWasCorrect){
                    CurrentQuestionIndex += 1
                }
                else{
                    print("nah")
                }
                
                question = questions[CurrentQuestionIndex].question
                
            }label: {
                Text(questions[CurrentQuestionIndex].option4)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
