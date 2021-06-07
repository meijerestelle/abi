//
//  ContentView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            ActivitiesView()
                .tabItem {
                    Image(systemName: "lightbulb.fill")
                    Text("Activiteiten")
                }
            
            MethodsView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Methodes")
                }
            
            LogView()
                .tabItem {
                    Image(systemName: "doc.append.fill")
                    Text("Logboek")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
