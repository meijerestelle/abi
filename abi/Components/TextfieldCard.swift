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
        VStack {
            Text(question.question)
            
            Text(question.explanation)
            TextField(
                "Typ hier",
                text: question.$answer
            )
        }
        .padding()
    }
}

struct TextfieldCard_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldCard(question: questionsData[0])
    }
}
