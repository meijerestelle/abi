//
//  QuestionModel.swift
//  abi
//
//  Created by Estèlle Meijer on 08/06/2021.
//

import SwiftUI

struct Question: Identifiable {
    var id = UUID()
    var question:String
    var explanation:String
    var phase:String
    @State var answer: String
}
