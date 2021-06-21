//
//  ActivitiesLogView.swift
//  abi
//
//  Created by Estèlle Meijer on 20/06/2021.
//

import SwiftUI

struct ActivitiesLogView: View {
    
    @State var activeCategory = ""
    var activities = activitiesData
    var logEntries = logData
    
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "square.grid.2x2.fill")
                
                Text("Categorieën")
                    .fontWeight(.bold)
                
                Spacer()
            }
            .font(.title2)
            .padding(.horizontal)
            
            HStack {
                Button(action: {
                    activeCategory = "samen"
                }) {
                    FilterCard(filterImage: "person.2.fill", filterTitle: "Samen")
                }
                Button(action: {
                    activeCategory = "alleen"
                }) {
                        FilterCard(filterImage: "person.fill", filterTitle: "Alleen")
                    }
            }
            .padding(.horizontal)

            HStack {
                Button(action: {
                        activeCategory = "afleiding"
                    
                }) {
                    FilterCard(filterImage: "face.smiling.fill", filterTitle: "Afleiding")
                }
                
                Button (
                    action: {
                        activeCategory = "communicatie"
                        
                    }) { FilterCard(filterImage: "bubble.left.and.bubble.right.fill", filterTitle: "Communicatie")
                }
            }
            .padding(.horizontal)
            
            HStack {
                Image(systemName: "clock.fill")
                
                Text("Recent")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding([.horizontal, .bottom])
            
            if activeCategory != "" {
                ForEach(logEntries) { logEntry in
                    if logEntry.tag == activeCategory {
                        LogComponent(log: logEntry)
                    }
                }
            } else {
                ForEach(logEntries) { logEntry in
                    LogComponent(log: logEntry)
                }
            }
        }
        .navigationTitle("Activiteiten Logboek")
    }
}

struct ActivitiesLogView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesLogView()
    }
}
