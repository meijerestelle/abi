//
//  CommunicatieActiviteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct CommunicatieActiviteiten: View {
    
    @ObservedObject var activities = Activities.standard
    
    var communicatieActiviteiten: [Activity] {
        activities.allActivities.filter { communicatieActiviteit in
            return communicatieActiviteit.tag == "communicatie"
        }
    }
    
    var body: some View {
        ScrollView {
            ForEach(communicatieActiviteiten) { item in
                NavigationLink(destination: ActivityView(activity: item)) {
                    CardComponent(activity: item)
                }
                .foregroundColor(.black)
            }
        }
        .navigationTitle("Alleen")
    }
}

struct CommunicatieActiviteiten_Previews: PreviewProvider {
    static var previews: some View {
        CommunicatieActiviteiten()
    }
}
