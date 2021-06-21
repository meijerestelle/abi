//
//  SamenActiviteiten.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct SamenActiviteiten: View {
    
    @ObservedObject var activities = Activities.standard
    
    var samenActiviteiten: [Activity] {
        activities.allActivities.filter { samenActiviteit in
            return samenActiviteit.tag == "samen"
        }
    }
    
    var body: some View {
        ScrollView {
            ForEach(samenActiviteiten) { item in
                NavigationLink(destination: ActivityView(activity: item)) {
                    CardComponent(activity: item)
                }
                .foregroundColor(.black)
            }
        }
        .navigationTitle("Samen")
    }
}

struct SamenActiviteiten_Previews: PreviewProvider {
    static var previews: some View {
        SamenActiviteiten()
    }
}
