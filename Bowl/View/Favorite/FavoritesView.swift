import SwiftUI
import SwiftData

struct FavoritesView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [RecipeStorage]
    
    var body: some View {
        VStack {
            List {
                ForEach(items) { recipe in
                    NavigationLink(destination: RecipeView(recipe: Recipe(
                        idMeal: recipe.idMeal,
                        strMeal: recipe.strMeal,
                        strCategory: recipe.strCategory,
                        strArea: recipe.strArea,
                        strInstructions: recipe.strInstructions,
                        strMealThumb: recipe.strMealThumb,
                        
                        strIngredient1: recipe.strIngredient1,
                        strIngredient2: recipe.strIngredient2,
                        strIngredient3: recipe.strIngredient3,
                        strIngredient4: recipe.strIngredient4,
                        strIngredient5: recipe.strIngredient5,
                        strIngredient6: recipe.strIngredient6,
                        strIngredient7: recipe.strIngredient7,
                        strIngredient8: recipe.strIngredient8,
                        strIngredient9: recipe.strIngredient9,
                        strIngredient10: recipe.strIngredient10,
                        strIngredient11: recipe.strIngredient11,
                        strIngredient12: recipe.strIngredient12,
                        strIngredient13: recipe.strIngredient13,
                        strIngredient14: recipe.strIngredient14,
                        strIngredient15: recipe.strIngredient15,
                        strIngredient16: recipe.strIngredient16,
                        strIngredient17: recipe.strIngredient17,
                        strIngredient18: recipe.strIngredient18,
                        strIngredient19: recipe.strIngredient19,
                        strIngredient20: recipe.strIngredient20,
                        
                        strMeasure1: recipe.strMeasure1,
                        strMeasure2: recipe.strMeasure2,
                        strMeasure3: recipe.strMeasure3,
                        strMeasure4: recipe.strMeasure4,
                        strMeasure5: recipe.strMeasure5,
                        strMeasure6: recipe.strMeasure6,
                        strMeasure7: recipe.strMeasure7,
                        strMeasure8: recipe.strMeasure8,
                        strMeasure9: recipe.strMeasure9,
                        strMeasure10: recipe.strMeasure10,
                        strMeasure11: recipe.strMeasure11,
                        strMeasure12: recipe.strMeasure12,
                        strMeasure13: recipe.strMeasure13,
                        strMeasure14: recipe.strMeasure14,
                        strMeasure15: recipe.strMeasure15,
                        strMeasure16: recipe.strMeasure16,
                        strMeasure17: recipe.strMeasure17,
                        strMeasure18: recipe.strMeasure18,
                        strMeasure19: recipe.strMeasure19,
                        strMeasure20: recipe.strMeasure20
                    ))){
                        //MARK: FOREACH CONTENT
                        
                        
                        VStack(alignment: .leading) {
                            HStack {
                                AsyncImage(url: recipe.strMealThumb){result in
                                        result.resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView().progressViewStyle(.circular)
                                }
                                .frame(width: 140,height: 140)
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                VStack(alignment: .leading) {
                                    Text(recipe.strMeal)
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.darkGreyBase)
                                        .padding(.bottom, 5)
                                    

                                    
                                    Text(recipe.strCategory)
                                        .font(.caption2)
                                        .padding(.horizontal,5)
                                        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("aquaBaseColor")))
                                        .foregroundColor(.FAFAFA)
                                        .fontWeight(.semibold)
                                    
                                    HStack {
                                        Image(recipe.strArea)
                                            .resizable()
                                            .frame(width: 34,height: 22)
                                            .clipShape(RoundedRectangle(cornerRadius: 3))
                                            .shadow(radius: 0.5)
                                        
                                        Text(recipe.strArea)
                                            .font(.caption2)
                                            .shadow(radius: 0.5)
                                    }
                                }
                            }
                        }
                        
                        
                    }.buttonStyle(PlainButtonStyle())
                }
                .onDelete(perform: deleteItems)
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }            .navigationTitle("Bookmarks")
            .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private func addItem() {
        withAnimation {
            let newItem = RecipeStorage(idMeal: "52771", strMeal: "Spicy Arrabiata Penne", strCategory: "Vegetarian", strArea: "Italian", strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.", strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg")!, strIngredient1: "a", strIngredient2: "a", strIngredient3: "a", strIngredient4: "a", strIngredient5: "a", strIngredient6: "a", strIngredient7: "a", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "a", strMeasure3: "a", strMeasure4: "a", strMeasure5: "a", strMeasure6: "a", strMeasure7: "a", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: "")
            modelContext.insert(newItem)
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

