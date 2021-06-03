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
    var activiteit: String
    var top: String
    var tip: String
    var opmerking: String
}
