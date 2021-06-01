//
//  ActivityView.swift
//  abi
//
//  Created by Estèlle Meijer on 26/05/2021.
//

import SwiftUI

struct ActivityView: View {
    
    @State private var isOn = false
    
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
                
                Toggle("Switch", isOn: $isOn)
                    .toggleStyle(CheckToggleStyle())
                    .onChange(of: isOn, perform: { value in
                        Activities.standard.setFavorite(value: value, forActivity: activity)
                    })
            }
            .padding(.horizontal)
            .frame(idealWidth: .infinity, alignment: .leading)
        }
        .navigationTitle(activity.title)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            icon: do {
                Image(systemName: configuration.isOn ? "heart.fill" : "heart")
                    .foregroundColor(Color("Oranje"))
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: activitiesData[1])
    }
}
