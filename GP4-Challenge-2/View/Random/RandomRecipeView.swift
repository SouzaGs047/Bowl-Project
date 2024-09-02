import SwiftUI
import SwiftData

struct RandomRecipeView: View {
    @StateObject var randomRecipeModel = RecipeModel()
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [RecipeStorage]
    @State var isSaved = false
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach(randomRecipeModel.recipesArray, id: \.idMeal) { recipe in
                    VStack {
                        AsyncImage(url: recipe.strMealThumb) { recipe in
                            recipe.image?
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 200, height: 200)
                        
                        Text(recipe.strMeal)
                        CountryAndCat(country: recipe.strArea, category: recipe.strCategory)
                        
                        Text(recipe.strInstructions)
                            .padding()
                    }
                }
                
            }
        }
            .navigationTitle("Recipe Details")
            .toolbar {
                Button(action: {
                    if isSaved {
                        // Remove a receita do armazenamento se já estiver salva
                        removeItem(recipeId: randomRecipeModel.recipesArray[0].idMeal)
                        isSaved = false
                    } else {
                        // Adiciona a receita ao armazenamento
                        addItem(recipeToAdd: Recipe(
                            idMeal: randomRecipeModel.recipesArray[0].idMeal,
                            strMeal: randomRecipeModel.recipesArray[0].strMeal,
                            strCategory: randomRecipeModel.recipesArray[0].strCategory,
                            strArea: randomRecipeModel.recipesArray[0].strArea,
                            strInstructions: randomRecipeModel.recipesArray[0].strInstructions,
                            strMealThumb: randomRecipeModel.recipesArray[0].strMealThumb,
                            
                            
                            strIngredient1: randomRecipeModel.recipesArray[0].strIngredient1,
                                strIngredient2: randomRecipeModel.recipesArray[0].strIngredient2,
                                strIngredient3: randomRecipeModel.recipesArray[0].strIngredient3,
                                strIngredient4: randomRecipeModel.recipesArray[0].strIngredient4,
                                strIngredient5: randomRecipeModel.recipesArray[0].strIngredient5,
                                strIngredient6: randomRecipeModel.recipesArray[0].strIngredient6,
                                strIngredient7: randomRecipeModel.recipesArray[0].strIngredient7,
                                strIngredient8: randomRecipeModel.recipesArray[0].strIngredient8,
                                strIngredient9: randomRecipeModel.recipesArray[0].strIngredient9,
                                strIngredient10: randomRecipeModel.recipesArray[0].strIngredient10,
                                strIngredient11: randomRecipeModel.recipesArray[0].strIngredient11,
                                strIngredient12: randomRecipeModel.recipesArray[0].strIngredient12,
                                strIngredient13: randomRecipeModel.recipesArray[0].strIngredient13,
                                strIngredient14: randomRecipeModel.recipesArray[0].strIngredient14,
                                strIngredient15: randomRecipeModel.recipesArray[0].strIngredient15,
                                strIngredient16: randomRecipeModel.recipesArray[0].strIngredient16,
                                strIngredient17: randomRecipeModel.recipesArray[0].strIngredient17,
                                strIngredient18: randomRecipeModel.recipesArray[0].strIngredient18,
                                strIngredient19: randomRecipeModel.recipesArray[0].strIngredient19,
                                strIngredient20: randomRecipeModel.recipesArray[0].strIngredient20,
                                strMeasure1: randomRecipeModel.recipesArray[0].strMeasure1,
                                strMeasure2: randomRecipeModel.recipesArray[0].strMeasure2,
                                strMeasure3: randomRecipeModel.recipesArray[0].strMeasure3,
                                strMeasure4: randomRecipeModel.recipesArray[0].strMeasure4,
                                strMeasure5: randomRecipeModel.recipesArray[0].strMeasure5,
                                strMeasure6: randomRecipeModel.recipesArray[0].strMeasure6,
                                strMeasure7: randomRecipeModel.recipesArray[0].strMeasure7,
                                strMeasure8: randomRecipeModel.recipesArray[0].strMeasure8,
                                strMeasure9: randomRecipeModel.recipesArray[0].strMeasure9,
                                strMeasure10: randomRecipeModel.recipesArray[0].strMeasure10,
                                strMeasure11: randomRecipeModel.recipesArray[0].strMeasure11,
                                strMeasure12: randomRecipeModel.recipesArray[0].strMeasure12,
                                strMeasure13: randomRecipeModel.recipesArray[0].strMeasure13,
                                strMeasure14: randomRecipeModel.recipesArray[0].strMeasure14,
                                strMeasure15: randomRecipeModel.recipesArray[0].strMeasure15,
                                strMeasure16: randomRecipeModel.recipesArray[0].strMeasure16,
                                strMeasure17: randomRecipeModel.recipesArray[0].strMeasure17,
                                strMeasure18: randomRecipeModel.recipesArray[0].strMeasure18,
                                strMeasure19: randomRecipeModel.recipesArray[0].strMeasure19,
                                strMeasure20: randomRecipeModel.recipesArray[0].strMeasure20))

                            
                        isSaved = true
                    }
                }, label: {
                    Image(isSaved ? "favorite.fill" : "favorite")
                })
            }
        .onAppear {
            randomRecipeModel.fetchRandom()
        }
    }
    
    // MARK: ADD ITEM
    private func addItem(recipeToAdd: Recipe) {
        withAnimation {
            let newItem = RecipeStorage(idMeal: recipeToAdd.idMeal,
                                        strMeal: recipeToAdd.strMeal,
                                        strCategory: recipeToAdd.strCategory,
                                        strArea: recipeToAdd.strArea,
                                        strInstructions: recipeToAdd.strInstructions,
                                        strMealThumb: recipeToAdd.strMealThumb,
                                        strIngredient1: recipeToAdd.strIngredient1,
                                        strIngredient2: recipeToAdd.strIngredient2,
                                        strIngredient3: recipeToAdd.strIngredient3,
                                        strIngredient4: recipeToAdd.strIngredient4,
                                        strIngredient5: recipeToAdd.strIngredient5,
                                        strIngredient6: recipeToAdd.strIngredient6,
                                        strIngredient7: recipeToAdd.strIngredient7,
                                        strIngredient8: recipeToAdd.strIngredient8,
                                        strIngredient9: recipeToAdd.strIngredient9,
                                        strIngredient10: recipeToAdd.strIngredient10,
                                        strIngredient11: recipeToAdd.strIngredient11,
                                        strIngredient12: recipeToAdd.strIngredient12,
                                        strIngredient13: recipeToAdd.strIngredient13,
                                        strIngredient14: recipeToAdd.strIngredient14,
                                        strIngredient15: recipeToAdd.strIngredient15,
                                        strIngredient16: recipeToAdd.strIngredient16,
                                        strIngredient17: recipeToAdd.strIngredient17,
                                        strIngredient18: recipeToAdd.strIngredient18,
                                        strIngredient19: recipeToAdd.strIngredient19,
                                        strIngredient20: recipeToAdd.strIngredient20,
                                        strMeasure1: recipeToAdd.strMeasure1,
                                        strMeasure2: recipeToAdd.strMeasure2,
                                        strMeasure3: recipeToAdd.strMeasure3,
                                        strMeasure4: recipeToAdd.strMeasure4,
                                        strMeasure5: recipeToAdd.strMeasure5,
                                        strMeasure6: recipeToAdd.strMeasure6,
                                        strMeasure7: recipeToAdd.strMeasure7,
                                        strMeasure8: recipeToAdd.strMeasure8,
                                        strMeasure9: recipeToAdd.strMeasure9,
                                        strMeasure10: recipeToAdd.strMeasure10,
                                        strMeasure11: recipeToAdd.strMeasure11,
                                        strMeasure12: recipeToAdd.strMeasure12,
                                        strMeasure13: recipeToAdd.strMeasure13,
                                        strMeasure14: recipeToAdd.strMeasure14,
                                        strMeasure15: recipeToAdd.strMeasure15,
                                        strMeasure16: recipeToAdd.strMeasure16,
                                        strMeasure17: recipeToAdd.strMeasure17,
                                        strMeasure18: recipeToAdd.strMeasure18,
                                        strMeasure19: recipeToAdd.strMeasure19,
                                        strMeasure20: recipeToAdd.strMeasure20)
            
            modelContext.insert(newItem)
        }
    }
    
    // MARK: REMOVE ITEM
    private func removeItem(recipeId: String) {
        withAnimation {
            // Encontre o item a ser removido com base no idMeal
            if let index = items.firstIndex(where: { $0.idMeal == recipeId }) {
                // Exclua o item do contexto do modelo
                let itemToDelete = items[index]
                modelContext.delete(itemToDelete)
            }
        }
    }
    
    // MARK: CHECK IF RECIPE IS SAVED
    private func isRecipeSaved() -> Bool {
        // Check if a RecipeStorage with the same idMeal already exists
        items.contains { $0.idMeal == randomRecipeModel.recipesArray[0].idMeal}
    }
}

#Preview {
    RandomRecipeView()
}
