//
//  LinkCard.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct LinkCard: View {
    
    var linkName: String
    var linkDescription: String
    var linkImage: String
    
    var body: some View {
        HStack {
            Image(linkImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .clipped()
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(linkName)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(linkDescription)
                    .lineLimit(5)
            }
            
            Spacer()
            
            VStack() {
                
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding([.horizontal, .bottom])
    }
}

struct LinkCard_Previews: PreviewProvider {
    static var previews: some View {
        LinkCard(linkName: "Activiteiten", linkDescription: "Methodes", linkImage: "Activiteiten")
    }
}
