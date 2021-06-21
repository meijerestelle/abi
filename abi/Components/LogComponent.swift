//
//  LogComponent.swift
//  abi
//
//  Created by Estèlle Meijer on 20/06/2021.
//

import SwiftUI

struct LogComponent: View {
    
    var log: Log
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(log.date)
                    .font(.subheadline)
            
                Text(log.activity)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(log.tip)
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

struct LogComponent_Previews: PreviewProvider {
    static var previews: some View {
        LogComponent(log: logData[0])
    }
}
