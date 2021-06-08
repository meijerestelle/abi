//
//  SignaleringsplanView.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct SignaleringsplanView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Deze methode kan je alleen of samen met iemand met depressie doen. Het doel is om via een vooraf opgesteld plan snel te signaleren of het iets minder gaat. Dit kan ook zeker voor jezelf zijn, zodat je weet dat je het even wat rustiger aan moet gaan doen.")
                .padding(.bottom, 20)
            
            Text("De drie fasen")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 75, height: 75)
                
                Text("Je voelt je oké, het gaat goed, je bent in balans.")
            }
            
            HStack {
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 75, height: 75)
                
                Text("Je voelt je niet helemaal oké, je hebt waarschijnlijk één of meer problemen, het gaat niet zo lekker.")
            }
            
            HStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 75, height: 75)
                
                Text("Je voelt je niet goed en je overziet het allemaal niet meer. Je vraagt je af hoe je hier nog uitkomt.")
            }
            
            Spacer()
            
            HStack(alignment: .center) {
                Button(action: {
                    print("eerdere bekijken")
                }, label: {
                    Image(systemName: "clock")
                    Text("Eerdere bekijken")
                })
                .padding()
                .background(Color.accentColor)
                .foregroundColor(.white)
                .modifier(CardModifier())
                
                Spacer()
                
                NavigationLink(
                    destination: AddSignaleringsplan(),
                    label: {
                        Image(systemName: "plus")
                        Text("Nieuwe maken")
                    })
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .modifier(CardModifier())
            }
        }
        .padding()
        .navigationTitle("Signaleringsplan")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct SignaleringsplanView_Previews: PreviewProvider {
    static var previews: some View {
        SignaleringsplanView()
    }
}
