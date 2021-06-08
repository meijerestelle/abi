//
//  Plan2.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct Plan2: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                Spacer()
                
                NavigationLink(
                    destination: Plan3(),
                    label: {
                        Text("Volgende")
                    })
                    .padding()
            }
        }
        .padding()
    }
}

struct Plan2_Previews: PreviewProvider {
    static var previews: some View {
        Plan2()
    }
}
