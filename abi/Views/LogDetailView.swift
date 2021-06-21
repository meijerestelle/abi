//
//  LogDetailView.swift
//  abi
//
//  Created by Estèlle Meijer on 21/06/2021.
//

import SwiftUI

struct LogDetailView: View {
    
    var logEntry: Log
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(logEntry.date)
                .font(.subheadline)
                .padding(.bottom, 20)
                
            Text("Opmerkingen:")
                .font(.title2)
            
            if (logEntry.comment == "") {
                Text("Er zijn geen opmerkingen!")
                    .foregroundColor(.secondary)
                    .italic()
                    .padding(.bottom, 20)
            } else {
                Text(logEntry.comment)
                    .padding(.bottom, 20)
            }
            
            
            Text("Tips:")
                .font(.title2)
            Text(logEntry.tip)
                .padding(.bottom, 20)
            
            Text("Tops:")
                .font(.title2)
            Text(logEntry.top)
                .padding(.bottom, 20)
            
            Spacer()
        }
        .navigationTitle(logEntry.activity)
        .padding(.horizontal)
    }
}

struct LogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LogDetailView(logEntry: logData[0])
    }
}
