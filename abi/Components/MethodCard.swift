//
//  MethodCard.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct MethodCard: View {
    
    var activity: Activity
    
    var body: some View {
        HStack {
            
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
        .frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding([.horizontal, .bottom])
    }
}

struct MethodCard_Previews: PreviewProvider {
    static var previews: some View {
        MethodCard(activity: activitiesData[25])
    }
}
