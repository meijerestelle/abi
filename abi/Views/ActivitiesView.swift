//
//  Activiteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ActivitiesView: View {
    
    @ObservedObject var activitiesStandard = Activities.standard
    
    var activities = activitiesData
    @State var activeCategory = ""
    @State var filterIcon = ""
    
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
                    Button(action: {
                        activeCategory = "samen"
                        filterIcon = "person.2.fill"
                    }) {
                        FilterCard(filterImage: "person.2.fill", filterTitle: "Samen")
                    }
                    
                    Button(action: {
                        activeCategory = "alleen"
                        filterIcon = "person.fill"
                    }) {
                        FilterCard(filterImage: "person.fill", filterTitle: "Alleen")
                        }
                }
                .padding(.horizontal)

                HStack {
                    Button(action: {
                        activeCategory = "afleiding"
                        filterIcon = "face.smiling.fill"
                    }) {
                        FilterCard(filterImage: "face.smiling.fill", filterTitle: "Afleiding")
                    }
                    
                    Button(action: {
                        activeCategory = "communicatie"
                        filterIcon = "bubble.left.and.bubble.right.fill"
                    }) {
                        FilterCard(filterImage: "bubble.left.and.bubble.right.fill", filterTitle: "Communicatie")
                    }
                }
                .padding(.horizontal)
                
                if activeCategory != "" {
                    HStack {
                        Image(systemName: "\(filterIcon)")
                        
                        Text("Categorie: \(activeCategory)")
                            .fontWeight(.bold)
                            .autocapitalization(UITextAutocapitalizationType.words)
                        
                        Spacer()
                    }
                    .font(.title2)
                    .padding(.horizontal)
                    
                    ForEach(activities) { activity in
                        if activity.tag == activeCategory {
                            NavigationLink(destination: ActivityView(activity: activity)) {
                                CardComponent(activity: activity)
                            }
                            .foregroundColor(.black)
                        }
                    }
                } else {
                    HStack {
                        Image(systemName: "heart.fill")
                        Text("Favorieten")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .font(.title2)
                    .padding(.horizontal)
                    
                    ForEach(activitiesStandard.favorites) { item in
                        NavigationLink(destination: ActivityView(activity: item)) {
                            CardComponent(activity: item)
                        }
                        .foregroundColor(.black)
                    }
                    
                    if (activitiesStandard.favorites.isEmpty) {
                        HStack {
                            Text("Je hebt nog geen favorieten!")
                            
                            Spacer()
                        }
                        .padding([.horizontal])
                    }
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
