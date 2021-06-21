//
//  CheckinComponent.swift
//  abi
//
//  Created by Estèlle Meijer on 16/05/2021.
//

import SwiftUI

struct CheckinComponent: View {
    @State var reden: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hoe zou jij de mood van je buddy inschatten vandaag?")
            
            HStack {
                Spacer()
                
                // FIXME: - Zorgen dat deze cirkels een waarde meegeven aan een logentry
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 60.0, height: 60.0)
                
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 60.0, height: 60.0)
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 60.0, height: 60.0)
                
                Spacer()
            }
            .padding(.bottom)
            
            Text("Waarom denk je dat?")
            
            TextField("Reden...", text: $reden)
            
            
            HStack {
                Spacer()
                
                Button(action: {
                    // TODO: - Zorgen dat deze button daadwerkelijk iets opslaat.
                    print("Opslaan in logboek")
                }, label: {
                    Text("Opslaan in logboek")
                })
                .padding()
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .modifier(CardModifier())
        .padding()
    }
}

struct CheckinComponent_Previews: PreviewProvider {
    static var previews: some View {
        CheckinComponent()
    }
}
