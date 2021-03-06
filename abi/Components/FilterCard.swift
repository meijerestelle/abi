//
//  FilterCard.swift
//  abi
//
//  Created by Estèlle Meijer on 26/05/2021.
//

import SwiftUI

struct FilterCard: View {
    
    var filterImage:String
    var filterTitle:String
    
    var body: some View {
        VStack {
            Image(systemName: "\(filterImage)")
                .padding()
            Text(filterTitle)
                .lineLimit(2)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
        .padding()
        .background(Color("AccentColor"))
        .modifier(CardModifier())
        .padding(.bottom)
    }
}

struct FilterCard_Previews: PreviewProvider {
    static var previews: some View {
        FilterCard(filterImage: "person.2.fill", filterTitle: "Samen")
    }
}
