//
//  LogView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct LogView: View {
    
    var logEntries = logData
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Door het loggen van de mood van je buddy of het loggen van de activiteiten, kun je later terugkijken wat wel of niet goed ging bij je buddy op basis van je eigen ervaringen. ")
                    .padding()
                
                HStack {
                    FilterCard(filterImage: "", filterTitle: "Buddy mood")
                    
                    Spacer()
                    
                    NavigationLink(destination: ActivitiesLogView()) {
                        FilterCard(filterImage: "", filterTitle: "Activiteiten")
                    }
                }
                .padding()
                
                HStack {
                    Image("")
                    
                    Text("Recent")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding([.horizontal, .bottom])
                
                ForEach(logEntries) { logEntry in
                    NavigationLink(destination: LogDetailView(logEntry: logEntry)) { LogComponent(log: logEntry)
                        .foregroundColor(.black)
                    }
                }
            }
            .navigationBarTitle("Logboek")
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
