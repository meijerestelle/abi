//
//  ActivityModel.swift
//  abi
//
//  Created by Estèlle Meijer on 26/05/2021.
//

import SwiftUI

// MARK: - Activity Data Model

struct Activity: Identifiable {
    var id = UUID()
    var tag:String
    var image:String
    var title:String
    var headline:String
    var description:String
    var isFavorite:Bool
}


