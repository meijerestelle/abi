//
//  TextfieldCard.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct TextfieldCard: View {
    
    var question: Question
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(question.question)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(question.explanation)
            
            TextField(
                "Typ hier",
                text: question.$answer
                
                // FIXME: - Zorgen dat de antwoorden opgeslagen worden.
            )
        }
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding(.bottom)
    }
}

struct TextfieldCard_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldCard(question: questionsData[0])
    }
}
