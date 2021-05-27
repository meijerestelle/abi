//
//  ActivityView.swift
//  abi
//
//  Created by Estèlle Meijer on 26/05/2021.
//

import SwiftUI

struct ActivityView: View {
    
    var activity: Activity
    
    var body: some View {
        ScrollView {
            Image(activity.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200, alignment: .center)
                .ignoresSafeArea()
                .clipped()
            
            VStack(alignment: .leading) {
                Text(activity.headline)
                    .font(.headline)
                    .padding(.bottom)
                
                Text(activity.description)
                
                Spacer()
            }
            .padding(.horizontal)
            .frame(idealWidth: .infinity, alignment: .leading)
        }
        .navigationTitle(activity.title)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: activitiesData[1])
    }
}
