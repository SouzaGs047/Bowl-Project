//
//  Recipe.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import Foundation


struct Recipe: Hashable, Codable {
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strArea: String
    let strMealThumb: URL
}
