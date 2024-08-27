//
//  RecipeView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import SwiftUI

struct RecipeView: View {
    var recipe : Recipe
    var body: some View {
        AsyncImage(url: recipe.strMealThumb){result in result.image?
                .resizable()
                .scaledToFill()
        }.frame(width: 200, height: 200)
        
        Text(recipe.strMeal)
        Text(recipe.strCategory)
        Text(recipe.strArea)
        Text(recipe.strInstructions)
        
        Text(recipe.idMeal)
    }
}

#Preview {
    RecipeView(recipe: Recipe(idMeal: "a", strMeal: "sss", strCategory: "sss", strArea: "ssss", strInstructions: "sss", strMealThumb: URL(string: "ss")!))
}
