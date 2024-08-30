import SwiftUI

struct RecipeByIDView: View {
    @StateObject var recipeModel = RecipeModel()
    let recipeID : String
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading){
                    ForEach(recipeModel.recipesArray, id: \.idMeal) { recipe in
                        AsyncImage(url: recipe.strMealThumb){result in result.image?
                                .resizable()
                                .scaledToFill()
                        }.frame(width: 200, height: 200)
                        
                        Text(recipe.strMeal)
                        
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
                        
                    }
                }
            .navigationTitle("Recipe")
            .onAppear {
                recipeModel.fetchByID(id: recipeID)
            }
            }
        }
    }
}

#Preview {
    RecipeByIDView(recipeID: "52769")
}
