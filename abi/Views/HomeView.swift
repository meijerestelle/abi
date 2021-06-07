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
                HStack(alignment: .top) {
                    Image(systemName: "questionmark.circle")
                        
                    
                    Text("Heb jij je buddy al gecheckt vandaag?")
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .font(.title2)
                .padding([.top, .leading, .trailing])
                
                
                CheckinComponent()
                
                VStack(alignment: .leading) {
                
                    HStack {
                        Image(systemName: "sparkle")
                        
                        Text("Uitgelicht")
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .font(.title2)
                    .padding([.top, .leading, .trailing])
                    
                    NavigationLink (
                        destination: ActivitiesView(),
                        label: {
                            LinkCard(linkName: "Activiteiten", linkDescription: "Hier staan verschillende activiteiten die je samen met je buddy kunt gaan doen.", linkImage: "Activiteiten")
                        })
                        .foregroundColor(.black)
                    
                    NavigationLink (
                        destination: MethodsView(),
                        label: {
                            LinkCard(linkName: "Methodes", linkDescription: "Hier staan methoden die bevorderend kunnen werken om actief aan de slag te gaan met depressie.", linkImage: "Methodes")
                        })
                        .foregroundColor(.black)
                    
                    Text("113")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .modifier(CardModifier())
                        .padding()
                }
            }
            .navigationBarTitle("Welkom bij Abi", displayMode: .automatic)
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: InfoView(),
                    label: {
                        Image(systemName: "info.circle")
                            .imageScale(.large)
                    })
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
