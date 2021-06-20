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
        VStack {
            Image(activity.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200, alignment: .center)
                .ignoresSafeArea()
                .clipped()
            
            VStack(alignment: .leading) {
                HStack {
                    Text(activity.headline)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Toggle("Switch", isOn: $isOn)
                        .toggleStyle(CheckToggleStyle())
                        .onChange(of: isOn, perform: { value in
                            Activities.standard.setFavorite(isFavourite: value, forActivity: activity)
                        })
                }
                .padding(.vertical)
                
                Text(activity.description)
                
                Spacer()
                
                Button(
                    action: {
                    print("logboek")
                }, label: {
                    Text("Voeg toe aan logboek")
                        .multilineTextAlignment(.center)
                })
                    .frame(minWidth: 300, maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .modifier(CardModifier())
                    .padding(.top, 50)
            }
            .padding(.horizontal)
            .frame(idealWidth: .infinity, alignment: .leading)
        }
        .navigationTitle(activity.title)
        .navigationBarTitleDisplayMode(.automatic)
        .onAppear(){
            isOn = Activities.standard.isFavourited(activity: activity)
        }
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
