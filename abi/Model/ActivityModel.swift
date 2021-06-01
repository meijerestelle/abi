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

class Activities: ObservableObject {
    @Published var allActivities: [Activity] = activitiesData
    
    @Published var favorites: [Activity]
    static let standard = Activities()
    private init() {
        favorites = activitiesData.filter(\.isFavorite)
        print(favorites.count)
    }
    
    func setFavorite(value: Bool, forActivity: Activity) {
        var item = allActivities.first { current in
            current.id == forActivity.id
        }
        
        item?.isFavorite = value
        favorites = activitiesData.filter(\.isFavorite)
    }
}
