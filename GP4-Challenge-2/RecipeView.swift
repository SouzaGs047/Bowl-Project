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
        
        NavigationView {
            ScrollView{
                AsyncImage(url: recipe.strMealThumb){result in result.image?
                        .resizable()
                        .scaledToFill()
                }.frame(width: 200, height: 200)
                
                Text(recipe.strMeal)
                Text(recipe.strCategory)
                Text(recipe.strArea)
                Text(recipe.strInstructions)
                Text(recipe.idMeal)
            }.navigationTitle("Recipe")
        }
        
        
    }
}

#Preview {
    RecipeView(recipe: Recipe(idMeal: "52771", strMeal: "Spicy Arrabiata Penne", strCategory: "Vegetarian", strArea: "Italian", strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.", strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg")!))
}
