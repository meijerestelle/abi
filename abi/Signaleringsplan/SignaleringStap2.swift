//
//  Plan2.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct SignaleringStap2: View {
    
    @State var stressFactors: String = "Voeg hier jouw stressfactoren toe."
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Wat geeft jou stress?")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Wat gaf jou de afgelopen tijd stress? \nWelke stressbronnen zorgden ervoor dat je de afgelopen tijd uit balans raakte?")
            
            TextEditor(text: $stressFactors)
                .foregroundColor(.secondary)
                .background(Color.gray)
                .lineLimit(5)
            
            Spacer()
            
            HStack {
                Spacer()
                
                NavigationLink(
                    destination: SignaleringStap3(),
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
        .navigationBarTitle("Stress", displayMode: .inline)
    }
}

struct Plan2_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringStap2()
    }
}
