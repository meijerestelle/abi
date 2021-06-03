//
//  Activiteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ActivitiesView: View {
    
    @State private var goToNewView: Bool = false
    
    @ObservedObject var activities = Activities.standard
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    FilterCard(filterImage: "person.2.fill", filterTitle: "Samen")
                    FilterCard(filterImage: "person.fill", filterTitle: "Alleen")
                }
                .padding(.horizontal)

                HStack {
                    FilterCard(filterImage: "cloud.sun.fill", filterTitle: "Buiten")
                    FilterCard(filterImage: "bubble.left.and.bubble.right.fill", filterTitle: "Communicatie")
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
                
                ForEach(activities.favorites) { item in
                    NavigationLink(destination: ActivityView(activity: item)) {
                        CardComponent(activity: item)
                    }
                    .foregroundColor(.black)
                 }
                
                Divider()
                
                HStack {
                    Image(systemName: "list.bullet")
                    Text("Alle activiteiten")
                        .fontWeight(.bold)
                    Spacer()
                }
                .font(.title2)
                .padding(.horizontal)
                
                ForEach(activities.allActivities) { item in
                    NavigationLink(destination: ActivityView(activity: item)) {
                        CardComponent(activity: item)
                    }
                    .foregroundColor(.black)
                 }
            }
            .navigationBarTitle("Activiteiten")
        }
    }
}

struct Activiteiten_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
