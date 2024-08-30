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
        CountryAndCat(country: recipe.strArea, category: recipe.strCategory)
//        Ingredients(ingredient: recipe.strIngredient1, measure: recipe.strMeasure1)
//        Ingredients(ingredient: recipe.strIngredient2?, measure: recipe.strMeasure2?)
//        Ingredients(ingredient: recipe.strIngredient3, measure: recipe.strMeasure3)
//        Ingredients(ingredient: recipe.strIngredient4, measure: recipe.strMeasure4)
//        Ingredients(ingredient: recipe.strIngredient5, measure: recipe.strMeasure5)
//        Ingredients(ingredient: recipe.strIngredient6, measure: recipe.strMeasure6)
//        Ingredients(ingredient: recipe.strIngredient7, measure: recipe.strMeasure7)
//        Ingredients(ingredient: recipe.strIngredient8, measure: recipe.strMeasure8)
//        Ingredients(ingredient: recipe.strIngredient9, measure: recipe.strMeasure9)
//        Ingredients(ingredient: recipe.strIngredient10, measure: recipe.strMeasure10)
//        Ingredients(ingredient: recipe.strIngredient11, measure: recipe.strMeasure11)
//        Ingredients(ingredient: recipe.strIngredient12, measure: recipe.strMeasure12)
//        Ingredients(ingredient: recipe.strIngredient13, measure: recipe.strMeasure13)
//        Ingredients(ingredient: recipe.strIngredient14, measure: recipe.strMeasure14)
//        Ingredients(ingredient: recipe.strIngredient15, measure: recipe.strMeasure15)
//        Ingredients(ingredient: recipe.strIngredient16, measure: recipe.strMeasure16)
//        Ingredients(ingredient: recipe.strIngredient17, measure: recipe.strMeasure17)
//        Ingredients(ingredient: recipe.strIngredient18, measure: recipe.strMeasure18)
//        Ingredients(ingredient: recipe.strIngredient19, measure: recipe.strMeasure19)
//        Ingredients(ingredient: recipe.strIngredient20, measure: recipe.strMeasure20)

        
        Text(recipe.strInstructions)
            .padding()
    }
}

#Preview {
    RecipeView(recipe: Recipe(idMeal: "52771", strMeal: "Spicy Arrabiata Penne", strCategory: "Vegetarian", strArea: "Italian", strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.", strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg")!, strIngredient1: "a", strIngredient2: "a", strIngredient3: "a", strIngredient4: "a", strIngredient5: "a", strIngredient6: "a", strIngredient7: "a", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "a", strMeasure3: "a", strMeasure4: "a", strMeasure5: "a", strMeasure6: "a", strMeasure7: "a", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: ""))
}
