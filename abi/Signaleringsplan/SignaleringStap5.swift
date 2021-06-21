//
//  SignaleringStap5.swift
//  abi
//
//  Created by Estèlle Meijer on 20/06/2021.
//

import SwiftUI

struct SignaleringStap5: View {
    
    var questions = questionsData
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(questions) { question in
                if question.phase == "orange" {
                TextfieldCard(question: question)
                }
            }
            
            Spacer()
            
            HStack {
                NavigationLink(
                    destination: SignaleringStap6(),
                    label: {
                        Text("Volgende")
                            .frame(
                                minWidth: 50,
                                maxWidth: .infinity
                            )
                            .padding()
                            .background(Color("AccentColor"))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    })
            }
        }
        .padding()
        .navigationTitle("Fase oranje")
    }
}

struct SignaleringStap5_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringStap5()
    }
}
