//
//  HomeView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("dit is de landing van de app")
                .navigationTitle("Abi").navigationBarItems(trailing: Image(systemName: "info.circle"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
