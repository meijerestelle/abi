//
//  AlleenActiviteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct AlleenActiviteiten: View {
    
    @ObservedObject var activities = Activities.standard
    
    var alleenActiviteiten: [Activity] {
        activities.allActivities.filter { alleenActiviteit in
            return alleenActiviteit.tag == "alleen"
        }
    }
    
    var body: some View {
        ScrollView {
            ForEach(alleenActiviteiten) { item in
                NavigationLink(destination: ActivityView(activity: item)) {
                    CardComponent(activity: item)
                }
                .foregroundColor(.black)
            }
        }
        .navigationTitle("Alleen")
    }
}

struct AlleenActiviteiten_Previews: PreviewProvider {
    static var previews: some View {
        AlleenActiviteiten()
    }
}
