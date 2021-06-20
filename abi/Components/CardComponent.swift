//
//  CardComponent.swift
//  abi
//
//  Created by Estèlle Meijer on 16/05/2021.
//

import SwiftUI

struct CardComponent: View {
    
    var activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .clipped()
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(activity.title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(activity.headline)
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

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
    }
    
}

struct CardComponent_Previews: PreviewProvider {
    static var previews: some View {
        CardComponent(activity: activitiesData[1])
    }
}
