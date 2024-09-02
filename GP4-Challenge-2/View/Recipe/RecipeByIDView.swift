
import SwiftUI
import SwiftData

struct RecipeByIDView: View {
    @StateObject var recipeModel = RecipeModel()
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [RecipeStorage]
    @State var isSaved = false
    let recipeID : String
    
    
    var body: some View {
        VStack{
            ForEach(recipeModel.recipesArray, id: \.idMeal) { recipe in
                VStack{
                    ZStack{
                        VStack{
                            Rectangle()
                            
                                .frame(width: 398, height: 398)
                                .overlay(AsyncImage(url: recipe.strMealThumb){result in result.image?
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .offset(y: -50)
                                }.frame(width: 398, height: 398)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                )
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                        }
                        ScrollView {
                            VStack{
                                Spacer()
                                    .frame(height: 250)
                                VStack(alignment: .leading){
                                    
                                    Text(recipe.strMeal)
                                        .padding(.top)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    
                                    CountryAndCat(country: recipe.strArea, category: recipe.strCategory)
                                    VStack (alignment: .leading){
                                        Text("Ingredients")
                                            .font(.title3)
                                            .fontWeight(.semibold)
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
                                        
                                        RoundedRectangle(cornerRadius: 2)
                                            .frame(height: 2)
                                            .foregroundStyle(Color.aquaBase)
                                        Text("How to prepare")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .padding(.bottom, 7)
                                        Text(recipe.strInstructions)
                                    }
                                    .foregroundStyle(Color.greyBase)
                                }
                                .padding(.horizontal, 30)
                                .padding(.bottom, 30)
                                .background(Color("FAFAFAColor"))
                                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 30, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 30, style: .continuous))
                            }
                        }
                    }
                    
                }
                
            }
        }
        .navigationTitle("Recipe Details")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button(action: {
                if isSaved {
                    // Remove a receita do armazenamento se já estiver salva
                    removeItem(recipeId: recipeModel.recipesArray[0].idMeal)
                    isSaved = false
                } else {
                    // Adiciona a receita ao armazenamento
                    addItem(recipeToAdd: Recipe(
                        idMeal: recipeModel.recipesArray[0].idMeal,
                        strMeal: recipeModel.recipesArray[0].strMeal,
                        strCategory: recipeModel.recipesArray[0].strCategory,
                        strArea: recipeModel.recipesArray[0].strArea,
                        strInstructions: recipeModel.recipesArray[0].strInstructions,
                        strMealThumb: recipeModel.recipesArray[0].strMealThumb,
                        
                        
                        strIngredient1: recipeModel.recipesArray[0].strIngredient1,
                        strIngredient2: recipeModel.recipesArray[0].strIngredient2,
                        strIngredient3: recipeModel.recipesArray[0].strIngredient3,
                        strIngredient4: recipeModel.recipesArray[0].strIngredient4,
                        strIngredient5: recipeModel.recipesArray[0].strIngredient5,
                        strIngredient6: recipeModel.recipesArray[0].strIngredient6,
                        strIngredient7: recipeModel.recipesArray[0].strIngredient7,
                        strIngredient8: recipeModel.recipesArray[0].strIngredient8,
                        strIngredient9: recipeModel.recipesArray[0].strIngredient9,
                        strIngredient10: recipeModel.recipesArray[0].strIngredient10,
                        strIngredient11: recipeModel.recipesArray[0].strIngredient11,
                        strIngredient12: recipeModel.recipesArray[0].strIngredient12,
                        strIngredient13: recipeModel.recipesArray[0].strIngredient13,
                        strIngredient14: recipeModel.recipesArray[0].strIngredient14,
                        strIngredient15: recipeModel.recipesArray[0].strIngredient15,
                        strIngredient16: recipeModel.recipesArray[0].strIngredient16,
                        strIngredient17: recipeModel.recipesArray[0].strIngredient17,
                        strIngredient18: recipeModel.recipesArray[0].strIngredient18,
                        strIngredient19: recipeModel.recipesArray[0].strIngredient19,
                        strIngredient20: recipeModel.recipesArray[0].strIngredient20,
                        strMeasure1: recipeModel.recipesArray[0].strMeasure1,
                        strMeasure2: recipeModel.recipesArray[0].strMeasure2,
                        strMeasure3: recipeModel.recipesArray[0].strMeasure3,
                        strMeasure4: recipeModel.recipesArray[0].strMeasure4,
                        strMeasure5: recipeModel.recipesArray[0].strMeasure5,
                        strMeasure6: recipeModel.recipesArray[0].strMeasure6,
                        strMeasure7: recipeModel.recipesArray[0].strMeasure7,
                        strMeasure8: recipeModel.recipesArray[0].strMeasure8,
                        strMeasure9: recipeModel.recipesArray[0].strMeasure9,
                        strMeasure10: recipeModel.recipesArray[0].strMeasure10,
                        strMeasure11: recipeModel.recipesArray[0].strMeasure11,
                        strMeasure12: recipeModel.recipesArray[0].strMeasure12,
                        strMeasure13: recipeModel.recipesArray[0].strMeasure13,
                        strMeasure14: recipeModel.recipesArray[0].strMeasure14,
                        strMeasure15: recipeModel.recipesArray[0].strMeasure15,
                        strMeasure16: recipeModel.recipesArray[0].strMeasure16,
                        strMeasure17: recipeModel.recipesArray[0].strMeasure17,
                        strMeasure18: recipeModel.recipesArray[0].strMeasure18,
                        strMeasure19: recipeModel.recipesArray[0].strMeasure19,
                        strMeasure20: recipeModel.recipesArray[0].strMeasure20))
                    
                    
                    isSaved = true
                }
            }, label: {
                Image(isSaved ? "bookmark.fill" : "bookmark")
            })
        }
        .onAppear {
            recipeModel.fetchByID(id: recipeID)
            isSaved = isRecipeSaved()
            
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
        items.contains { $0.idMeal == recipeID}
    }
}

//#Preview {
//    RandomRecipeView()
//}
