import SwiftUI

struct RecipeByIDView: View {
    @StateObject var recipeModel = RecipeModel()
    let recipeID : String
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { recipe in
                    AsyncImage(url: recipe.strMealThumb){result in result.image?
                            .resizable()
                            .scaledToFill()
                    }.frame(width: 200, height: 200)
                    
                    Text(recipe.strMeal)
                    Text(recipe.strCategory)
                    Text(recipe.strArea)
                    Text(recipe.strInstructions)
                        
                    
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
    RecipeByIDView(recipeID: "52773")
}
