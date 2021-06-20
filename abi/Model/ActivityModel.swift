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
    var favouriteIds: Set<Int> = []
    
    static let standard = Activities()
    private init() {
        // Checken of er in de UserDefaults een lijst staat onder de noemer "favourites".
        if let values = UserDefaults.standard.array(forKey: "favourites") as? [Int] {
            favouriteIds = Set(values)
            updateFavourites()
        }
        print(favorites.count)
    }
    
    func setFavorite(isFavourite: Bool, forActivity: Activity) {
        // Hier wordt een item door de gebruiker gefavorite, of gedefavorite.
        let item = allActivities.first { current in
            current.id == forActivity.id
        }
        
        // Toevoegen aan het lijstje met favoriete ID's...
        if isFavourite {
            favouriteIds.insert(item!.id)
        }
        
        // Of uit de lijst halen.
        else {
            favouriteIds.remove(item!.id)
        }
        
        // De lijst met favoriete ID's bewaren...
        UserDefaults.standard.setValue(Array(favouriteIds), forKey: "favourites")
        
        // en de lijst met favorieten bijwerken.
        print(favorites.count)
        updateFavourites()
    }
    
    // Checken of een activiteit in de array met favoriete ID's staat.
    func isFavourited(activity: Activity) -> Bool {
        favouriteIds.contains(activity.id)
    }
    
    // Zoekt om de favouriteIds en zet die in de array favourites
    func updateFavourites () {
        // Favourites is initieel een lege array.
        favorites = []
        
        for id in favouriteIds {
            // Zoekt het juiste item...
            let item = allActivities.first { current in
                current.id == id
            }
            
            // En voegt deze toe aan de array met favoriete activiteiten.
            if let item = item {
                favorites.append(item)
            }
        }
    }
}

