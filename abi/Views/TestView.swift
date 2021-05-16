//
//  TestView.swift
//  abi
//
//  Created by Estèlle Meijer on 15/05/2021.
//

import SwiftUI

struct TestView: View {
    @State private var flag = false
    
    var body: some View {
            Text("Hello")
                .background(flag ? Color.orange : Color.blue)
                .onTapGesture {
                    self.flag.toggle()
                }
        }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
