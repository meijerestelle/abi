//
//  NewPlan1.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct Plan1: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Stress is een grote factor")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Iedereen heeft stress alleen verschilt het per persoon hoe je daar mee omgaat. Stress kan er ook voor zorgen dat je uit balans raakt. Dat zou bij bijvoorbeeld de fases betekenen dat je van groen naar oranje of zelfs naar rood gaat.")
                .padding(.top)
            
            Text("Als je eenmaal weet wat jouw stressbronnen zijn dan kun je deze proberen te vermijden voor zover dit mogelijk is.")
                .padding(.vertical)
            
            Text("In het filmpje vertelt timo wat zijn stressbronnen zijn en hoe probeert deze te vermijden.")
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                NavigationLink(
                    destination: Plan2(),
                    label: {
                        Text("Volgende")
                    })
                    .padding()
            }
        }
        .padding()
    }
}

struct Plan1_Previews: PreviewProvider {
    static var previews: some View {
        Plan1()
    }
}
