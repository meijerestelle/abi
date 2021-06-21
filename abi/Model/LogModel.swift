//
//  LogModel.swift
//  abi
//
//  Created by Estèlle Meijer on 01/06/2021.
//

import SwiftUI

struct Log: Identifiable {
    var id = UUID()
    var date:String
    var activity: String
    var top: String
    var tip: String
    var comment: String
}

//struct NewSignaleringsplan: Identifiable {
//    var id = UUID()
//    var question: String
//    var stressFactors: String
//}
//


// TODO: - Een functie fixen voor het toevoegen van logentries. Hieronder een beginnetje.

//class SignaleringInput: ObservableObject {
//    @Published var InputData: [NewSignaleringsplan] = signaleringsplanData
//    var NewData = NewSignaleringsplan()
//    
//    static let standard = SignaleringInput()
//    
//    private init() {
//        if let values = UserDefaults.standard.array(forKey: "SignaleringsplanInput") as? [NewSignaleringsplan] {
//            InputData = values
//        }
//    }
//    
//    func updateInputData() {
//        InputData = []
//        
//    }
//}
