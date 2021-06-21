//
//  LogModel.swift
//  abi
//
//  Created by Estèlle Meijer on 01/06/2021.
//

import SwiftUI

struct Log: Identifiable {
    var id = UUID()
    var tag: String
    var date: String
    var activity: String
    var top: String
    var tip: String
    var comment: String
}

struct PreventionPlan: Identifiable, Codable, Hashable {
    var id: Int
    var question: String
    var stressFactors: String
}

// TODO: - Een functie fixen voor het toevoegen van logentries. Hieronder een beginnetje.

//class PreventionPlans: ObservableObject {
//    @Published var allPreventionPlans: [PreventionPlan] = signaleringsplanData
//    @Published var newPlan: [PreventionPlan] = []
//    var planIDs: Set<Int> = []
//
//    static let standard = PreventionPlans()
//    private init() {
//        // Checken of er User Defaults zijn voor de Signaleringsplannen, en het lijstje inladen.
//        if let values = UserDefaults.standard.array(forKey: "preventionPlans") as? [Int] {
//            planIDs = [values]
//        }
//    }
//
//    func addPlan() {
//        let addPlan = Prev
//    }
//}
//
//class Plan: ObservableObject {
//    @Published var stressFactor: String?
//    static var plans = [Plan]()
//
//    init() {
//        Plan.plans.append(self)
//    }
//
//    init(name: String) {
//        self.stressFactor = stressFactor
//        Plan.plans.append(self)
//    }
//}

