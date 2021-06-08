//
//  Plan4.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct Plan4: View {
    
    @State private var stressFactors: String = ""
    @State private var isEditing = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Fase groen")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Wat denk je in fase groen?")
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Bijvoorbeeld: ik ben waardevol ik doe er toe, ze hebben het beste met me voor.")
                
                TextField(
                        "Typ hier...",
                         text: $stressFactors
                    ) { isEditing in
                        self.isEditing = isEditing
                    }
                    .autocapitalization(.none)
                
                    Text(stressFactors)
                        .foregroundColor(isEditing ? .red : .blue)
                
                Text("Wat voel je in fase groen?")
                    .fontWeight(.bold)
                    .padding(.top)
                    
                
                Text("Bijvoorbeeld: ontspannen, je hebt zin in een nieuwe dag, blij met hoe het leven eruit ziet.")
                
                TextField(
                        "Typ hier...",
                         text: $stressFactors
                    ) { isEditing in
                        self.isEditing = isEditing
                    }
                .autocapitalization(.none)
                
                Text("Wat doe je in fase groen?")
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Bijvoorbeeld: je gaat regelmatig op uit, er zijn wel problemen maar die los je op.")
                
//                HStack {
//
//                    Spacer()
//
//                    NavigationLink(
//                        destination: Plan3(),
//                        label: {
//                            Text("Volgende")
//                        })
//                        .padding()
//                }
            }
            .padding()
        }
    }
}

struct Plan4_Previews: PreviewProvider {
    static var previews: some View {
        Plan4()
    }
}
