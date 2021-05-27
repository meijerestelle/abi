//
//  HomeView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct HomeView: View {
    @State var stoplicht: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
    //            VStack(alignment: .leading) {
    //                Text("Hi, Estèlle" .uppercased())
    //                HStack {
    //
    //                    Text("Welkom bij Abi")
    //                        .font(.largeTitle)
    //                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    //
    //                    Spacer()
    //                }
    //            }
    //            .padding(.horizontal)
    //            .edgesIgnoringSafeArea(.all)
                
                HStack {
                    Image(systemName: "questionmark.circle")
                    
                    Text("Heb jij je buddy al gecheckt vandaag?")
                        .font(.headline)
                    
                    Spacer()
                }
                .padding([.top, .leading, .trailing])
                
                
                CheckinComponent()
                
                VStack(alignment: .leading) {
                
                    HStack {
                        Image(systemName: "sparkle")
                        
                        Text("Favorieten")
                            .font(.headline)
                        
                        Spacer()
                    }
                    .padding([.top, .leading, .trailing])
                    
                    
                }
            }
            .navigationBarTitle("Welkom bij Abi")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
