//
//  Favorite.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 28/08/24.
//

import Foundation

struct Favorite {
    var listFavorite: [Recipe]
    
    mutating func addFavorite(recipeToAdd: Recipe){
        listFavorite.append(recipeToAdd)
    }

//    mutating func removeFavorite(recipeToRemove: Recipe){
//        listFavorite[]
//    }
}


