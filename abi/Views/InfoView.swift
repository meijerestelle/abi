//
//  InfoView.swift
//  abi
//
//  Created by Estèlle Meijer on 07/06/2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            List {
                Link("Ervaringsverhalen", destination: URL(string: "https://mindblue.nl/ervaringsverhalen")!)
                Link("Meer over depressie", destination: URL(string: "https://mindblue.nl/depressie/soorten-depressies")!)
                Link("Over Abi", destination: URL(string: "https://abi-project.webflow.io/overabi")!)
            }
            
            Spacer()
            
            Link("Noodknop (113 site)", destination: URL(string: "https://113.nl")!)
                .frame(
                    minWidth: 200, maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
        }
        .navigationTitle("Info")
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
