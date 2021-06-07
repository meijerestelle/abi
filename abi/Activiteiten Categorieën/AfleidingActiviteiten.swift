//
//  AfleidingActiviteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct AfleidingActiviteiten: View {
    
    @ObservedObject var activities = Activities.standard
    
    var afleidingActiviteiten: [Activity] {
        activities.allActivities.filter { afleidingActiviteit in
            return afleidingActiviteit.tag == "afleiding"
        }
    }
    
    var body: some View {
        ScrollView {
            ForEach(afleidingActiviteiten) { item in
                NavigationLink(destination: ActivityView(activity: item)) {
                    CardComponent(activity: item)
                }
                .foregroundColor(.black)
            }
        }
        .navigationTitle("Alleen")
    }
}

struct AfleidingActiviteiten_Previews: PreviewProvider {
    static var previews: some View {
        AfleidingActiviteiten()
    }
}
