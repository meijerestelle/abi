//
//  Activiteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ActivitiesView: View {
    
    @ObservedObject var activities = Activities.standard
    
    var body: some View {
        NavigationView {
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
                    NavigationLink(destination: SamenActiviteiten()) {
                        FilterCard(filterImage: "person.2.fill", filterTitle: "Samen")
                    }
                    NavigationLink(
                        destination: AlleenActiviteiten(),
                        label: {
                            FilterCard(filterImage: "person.fill", filterTitle: "Alleen")
                        })
                }
                .padding(.horizontal)

                HStack {
                    NavigationLink(destination: AfleidingActiviteiten()) {
                        FilterCard(filterImage: "face.smiling.fill", filterTitle: "Afleiding")
                    }
                    NavigationLink(destination: CommunicatieActiviteiten()) {
                        FilterCard(filterImage: "bubble.left.and.bubble.right.fill", filterTitle: "Communicatie")
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Favorieten")
                        .fontWeight(.bold)
                    Spacer()
                }
                .font(.title2)
                .padding(.horizontal)
                
                if (activities.favorites.isEmpty) {
                    HStack {
                        Text("Je hebt nog geen favorieten!")
                        
                        Spacer()
                    }
                    .padding([.horizontal])
                }
                
                ForEach(activities.favorites) { item in
                    NavigationLink(destination: ActivityView(activity: item)) {
                        CardComponent(activity: item)
                    }
                    .foregroundColor(.black)
                 }
            }
            .navigationTitle("Activiteiten")
        }
    }
}

struct Activiteiten_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
