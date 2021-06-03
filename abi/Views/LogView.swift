//
//  LogView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct LogView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Logboek")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
            
            Text("Door het loggen van de mood van je buddy of het loggen van de activiteiten, kun je later terugkijken wat wel of niet goed ging bij je buddy op basis van je eigen ervaringen. ")
            
            HStack {
                Image("")
                
                Text("Categorieën")
            }
            
            HStack {
                FilterCard(filterImage: "", filterTitle: "Stoplicht")
                    
                
                Spacer()
                
                FilterCard(filterImage: "", filterTitle: "Activiteiten")
            }
            
            HStack {
                Image("")
                
                Text("Recente logs")
            }
            
            List {
                
            }
        }
        .padding()
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
