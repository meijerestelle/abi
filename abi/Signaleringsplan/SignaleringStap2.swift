//
//  Plan2.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct SignaleringStap2: View {
    
    @State var stressFactors: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Wat geeft jou stress?")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Wat gaf jou de afgelopen tijd stress? \nWelke stressbronnen zorgden ervoor dat je de afgelopen tijd uit balans raakte?")
            
            TextField("Typ hier iets...", text: $stressFactors)
                .foregroundColor(.secondary)
                .lineLimit(5)
            
            Button(action: {
                saveText()
            }) {
                Text("Save")
            }
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
            
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
    
    func saveText() {
        dataArray.append(stressFactors)
        stressFactors = ""
    }
}

struct Plan2_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringStap2()
    }
}
