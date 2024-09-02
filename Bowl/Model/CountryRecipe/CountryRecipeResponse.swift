//
//  CountryRecipeResponse.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import Foundation

struct CountryRecipeResponse: Hashable, Codable {
    let meals: [CountryRecipe]
}
