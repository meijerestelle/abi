//
//  ActivityModel.swift
//  abi
//
//  Created by Estèlle Meijer on 26/05/2021.
//

import SwiftUI

// MARK: - Activity Data Model

struct Activity: Identifiable {
    var id:Int
    var tag:String
    var image:String
    var title:String
    var headline:String
    var description:String
}

class Activities: ObservableObject {
    @Published var allActivities: [Activity] = activitiesData
    @Published var favorites: [Activity] = []
    var favouriteIds: Set<Int> = [] // <== als je hier een set van Int van maakt, dan kunnen er geen dubbelingen in zitten
    
    static let standard = Activities()
    private init() {
        // In de userdefaults staat een lijst (of niet)

        if let values = UserDefaults.standard.array(forKey: "favourites") as? [Int] {
            favouriteIds = Set(values)
            updateFavourites()
        }
        print(favorites.count)
    }
    
    func setFavorite(isFavourite: Bool, forActivity: Activity) {
        let item = allActivities.first { current in
            current.id == forActivity.id
        }
        // We hebben een item gevonden  dat door de gebruiker is gefavourite, of is gede-favourite
        
        // Nu Toevoegen aan ons lijstje, of er uit halen
        if isFavourite {
            favouriteIds.insert(item!.id)
            
        }
        else {
            // Uit de lijst  halen
            favouriteIds.remove(item!.id)
        }
        // Het lijstje bewaren
        UserDefaults.standard.setValue(Array(favouriteIds), forKey: "favourites")
        
        // De array met favourties bijwerken, zodat die klopt met het lijstje van geselecteerde ids
        print(favorites.count)
        updateFavourites()
    }
    
    func isFavourited(activity: Activity) -> Bool {
        favouriteIds.contains(activity.id)
    }
    
    // Zoekt om de favouriteIds en zet die in de array favourites
    func updateFavourites () {
        favorites = []
        for id in favouriteIds {
            // Zoek juiste item
            let item = allActivities.first { current in
                current.id == id
            }
            if let item = item {
                favorites.append(item)
            }
        }
    }
}

