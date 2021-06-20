//
//  AddSignaleringsplan.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct AddSignaleringsplan: View {
    var body: some View {
        ScrollView {
            NavigationLink(destination: SignaleringStap1()) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Voor jezelf.")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Text("Door veel met somberheid van een ander om te gaan kan je je zelf ook minder voelen.")
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .leading)
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .modifier(CardModifier())
                .padding()
            }
            
            NavigationLink(destination: SignaleringStap1()) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Voor je buddy.")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Text("Door een plan op te stellen voor je buddy kun je inien hoe je je buddy kan helpen in de verschillende fasen van depressie.")
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .leading)
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .modifier(CardModifier())
                .padding([.horizontal, .bottom])
            }
            
            Spacer()
        }
        .navigationTitle("Plan toevoegen")
    }
}

struct AddSignaleringsplan_Previews: PreviewProvider {
    static var previews: some View {
        AddSignaleringsplan()
    }
}
