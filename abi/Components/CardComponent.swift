//
//  CardComponent.swift
//  abi
//
//  Created by Estèlle Meijer on 16/05/2021.
//

import SwiftUI

struct CardComponent: View {
    
    @State private var isOn = false
    
    var activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .clipped()
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(activity.title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(activity.headline)
                    .lineLimit(5)
            }
            .frame(width: .infinity)
            
            Spacer()
            
            VStack() {
                
                    Toggle("Switch", isOn: $isOn)
                        .toggleStyle(CheckToggleStyle())
                
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding([.horizontal, .bottom])
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

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
    }
    
}

struct CardComponent_Previews: PreviewProvider {
    static var previews: some View {
        CardComponent(activity: activitiesData[0])
    }
}
