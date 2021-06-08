//
//  MethodsView.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct MethodsView: View {
    
    @ObservedObject var activities = Activities.standard
    
    var methodeActiviteiten: [Activity] {
        activities.allActivities.filter { methodeActiviteit in
            return methodeActiviteit.tag == "methodes"
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                HStack {
                    Text("Dit zijn vormen die je kunt gebruiken om bij te houden hoe het gaat met je buddy.")
                    
                    Spacer()
                }
                .padding([.horizontal, .bottom])
                
                NavigationLink(
                    destination: SignaleringsplanView(),
                    label: {
                        MethodCard(activity: activitiesData[25])
                            .foregroundColor(.black)
                    })
                
//                ForEach(methodeActiviteiten) { item in
//                    NavigationLink(
//                        destination: ActivityView(activity: item)) {
//                        MethodCard(activity: item)
//                            .foregroundColor(.black)
//                    }
//                }
            }
            .navigationBarTitle("Methodes")
        }
    }
}

struct MethodsView_Previews: PreviewProvider {
    static var previews: some View {
        MethodsView()
    }
}
