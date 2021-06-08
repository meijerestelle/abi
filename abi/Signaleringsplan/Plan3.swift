//
//  Plan3.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct Plan3: View {
    var body: some View {
        VStack {
            Text("In elke fase denk, voel en gedraag je je anders. Maar hoe herken je in welke fase je zit? Je kijkt anders naar de wereld wanneer je bijvoorbeeld in fase rood zit dan wanneer je in fase groen zit. Hierbij horen signalen, je kunt leren deze signalen te herkennen en hier mee om te gaan.")
            
            Image("fasen")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 50)
                .padding(.top, 50)
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                NavigationLink(
                    destination: Plan4(),
                    label: {
                        Text("Volgende")
                    })
                    .padding()
            }
        }
        .navigationTitle("Signalen")
        .padding()
    }
}

struct Plan3_Previews: PreviewProvider {
    static var previews: some View {
        Plan3()
    }
}
