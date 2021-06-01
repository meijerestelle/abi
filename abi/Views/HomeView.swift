//
//  HomeView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct HomeView: View {
    @State var stoplicht: Bool = true
    
    let activities: [Activity] = activitiesData
    var randomElement = activitiesData.randomElement()
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(systemName: "questionmark.circle")
                    
                    Text("Heb jij je buddy al gecheckt vandaag?")
                        .font(.headline)
                    
                    Spacer()
                }
                .padding([.top, .leading, .trailing])
                
                
                CheckinComponent()
                
                VStack(alignment: .leading) {
                
                    HStack {
                        Image(systemName: "sparkle")
                        
                        Text("Uitgelicht")
                            .font(.headline)
                        
                        Spacer()
                    }
                    .padding([.top, .leading, .trailing])
                    
                }
            }
            .navigationBarTitle("Welkom bij Abi")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
