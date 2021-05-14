//
//  ContentView.swift
//  abi
//
//  Created by Estèlle Meijer on 14/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        ZStack(alignment: .leading) {
            return NavigationView {
                GeometryReader { geometry in
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                
                .navigationBarTitle("Abi", displayMode: .inline)
                .navigationBarItems(leading: (
                                        Button(action: {
                                            withAnimation {
                                                self.showMenu.toggle()
                                            }
                                            
                                        })
                                        {
                                            Image(systemName: "info.circle")
                                                .imageScale(.large)
                                        }))
            }
            
        }
        .gesture(drag)
    }
}

//TabView {
//    HomeView()
//        .tabItem {
//            Image(systemName: "house.fill")
//            Text("Home")
//        }
//
//    ActivitiesView()
//        .tabItem {
//            Image(systemName: "heart.fill")
//            Text("Activiteiten")
//        }
//
//    LogView()
//        .tabItem {
//            Image(systemName: "book.closed.fill")
//            Text("Logboek")
//        }
//}

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
            self.showMenu = true
            }
        }) {
            Text("Show menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
