//
//  ContentView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }

                ActivitiesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Activiteiten")
                    }
                
                LogView()
                    .tabItem {
                        Image(systemName: "book.closed.fill")
                        Text("Logboek")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
