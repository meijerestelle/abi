//
//  MethodsView.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct MethodsView: View {
    
    @ObservedObject var activities = Activities.standard
    
    var methods: [Activity] {
        activities.allActivities.filter { methodeActiviteit in
            return methodeActiviteit.tag == "methodes"
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Dit zijn vormen die je kunt gebruiken om bij te houden hoe het gaat met je buddy.")
                    
                    Spacer()
                }
                .padding([.horizontal, .bottom])
                
                NavigationLink(destination: SignaleringsplanView()) {
                        MethodCard(activity: activitiesData[25])
                            .foregroundColor(.black)
                    }
                .isDetailLink(false)
                
//                NavigationLink(
//                    destination: Mindfulness(),
//                    label: {
//                        MethodCard(activity: activitiesData[26])
//                            .foregroundColor(.black)
//                    })
                
//                NavigationLink(
//                    destination: Mindset(),
//                    label: {
//                        MethodCard(activity: activitiesData[27])
//                            .foregroundColor(.black)
//                    })
                
                Spacer()
            }
            .navigationTitle("Methodes")
        }
    }
}

struct MethodsView_Previews: PreviewProvider {
    static var previews: some View {
        MethodsView()
    }
}
