//
//  Plan4.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct SignaleringStap4: View {
    
    @State private var stressFactors: String = ""
    @State private var isEditing = false
    
    var questions = questionsData
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(questions) { question in
                    if question.phase == "green" {
                    TextfieldCard(question: question)
                    }
                }
                
                HStack {
                    Spacer()
                    
                    NavigationLink(
                        destination: SignaleringStap5(),
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
            .navigationTitle("Fase groen")
        }
    }
}

struct Plan4_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringStap4()
    }
}
