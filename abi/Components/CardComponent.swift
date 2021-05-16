//
//  CardComponent.swift
//  abi
//
//  Created by Estèlle Meijer on 16/05/2021.
//

import SwiftUI

struct CardComponent: View {
    // Properties
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .clipped()
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(description)
                    .lineLimit(4)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding([.horizontal, .bottom])
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
    }
    
}

struct CardComponent_Previews: PreviewProvider {
    static var previews: some View {
        CardComponent(
        image: "hiking",
        title: "Activiteit",
        description: "Hier komt een korte samenvatting van een activiteit."
        )
    }
}
