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
        VStack{
            AsyncImage(url: recipe.strMealThumb){result in result.image?
                    .resizable()
                    .scaledToFill()
            }.frame(width: 400, height: 400)
            VStack(alignment: .leading) {
                HStack{
                    Text(recipe.strMeal)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
//                    CountryAndFlag(country: recipe.strArea)
                }
//                Text(recipe.strCategory)
//                    .padding(.horizontal, 7)
//                    .background(RoundedRectangle(cornerRadius: 50).fill(Color("secondaryColor")))
                CountryAndCat(country: recipe.strArea, category: recipe.strCategory)
                Ingredients(measure: recipe.strMeasure1, ingredient: recipe.strIngredient1)
                Ingredients(measure: recipe.strMeasure2, ingredient: recipe.strIngredient2)
                Ingredients(measure: recipe.strMeasure3, ingredient: recipe.strIngredient3)
                Ingredients(measure: recipe.strMeasure4, ingredient: recipe.strIngredient4)
                Ingredients(measure: recipe.strMeasure5, ingredient: recipe.strIngredient5)
                Ingredients(measure: recipe.strMeasure6, ingredient: recipe.strIngredient6)
                Ingredients(measure: recipe.strMeasure7, ingredient: recipe.strIngredient7)
                Ingredients(measure: recipe.strMeasure8, ingredient: recipe.strIngredient8)
                Ingredients(measure: recipe.strMeasure9, ingredient: recipe.strIngredient9)
                Ingredients(measure: recipe.strMeasure10, ingredient: recipe.strIngredient10)
                Ingredients(measure: recipe.strMeasure11, ingredient: recipe.strIngredient11)
                Ingredients(measure: recipe.strMeasure12, ingredient: recipe.strIngredient12)
                Ingredients(measure: recipe.strMeasure13, ingredient: recipe.strIngredient13)
                Ingredients(measure: recipe.strMeasure14, ingredient: recipe.strIngredient14)
                Ingredients(measure: recipe.strMeasure15, ingredient: recipe.strIngredient15)
                Ingredients(measure: recipe.strMeasure16, ingredient: recipe.strIngredient16)
                Ingredients(measure: recipe.strMeasure17, ingredient: recipe.strIngredient17)
                Ingredients(measure: recipe.strMeasure18, ingredient: recipe.strIngredient18)
                Ingredients(measure: recipe.strMeasure19, ingredient: recipe.strIngredient19)
                Ingredients(measure: recipe.strMeasure20, ingredient: recipe.strIngredient20)
                
                
                Text(recipe.strInstructions)
                    .padding()
            }.padding(.horizontal, 20 )
        }
    }
}

#Preview {
    RecipeView(recipe: Recipe(idMeal: "52771", strMeal: "Spicy Arrabiata Penne", strCategory: "Vegetarian", strArea: "Italian", strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.", strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg")!, strIngredient1: "a", strIngredient2: "a", strIngredient3: "a", strIngredient4: "a", strIngredient5: "a", strIngredient6: "a", strIngredient7: "a", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "a", strMeasure2: "a", strMeasure3: "a", strMeasure4: "a", strMeasure5: "a", strMeasure6: "a", strMeasure7: "a", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: ""))
}
