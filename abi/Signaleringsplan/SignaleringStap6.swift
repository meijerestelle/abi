//
//  SignaleringStap6.swift
//  abi
//
//  Created by Estèlle Meijer on 20/06/2021.
//

import SwiftUI

struct SignaleringStap6: View {
    
    var questions = questionsData
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(questions) { question in
                if question.phase == "red" {
                TextfieldCard(question: question)
                }
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                // TODO: - Button fixen voor het teruggaan naar de Root van deze NavigationLink slinger.
            }

        }
        .padding()
        .navigationTitle("Fase groen")
    }
}

struct SignaleringStap6_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringStap6()
    }
}
