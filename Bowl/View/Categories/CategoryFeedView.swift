/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct CategoryFeedView: View {
    @StateObject var countryRecipeModel = CountryRecipeModel()
    @StateObject var recipeModel = RecipeModel()
    let category : Category
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(countryRecipeModel.countryRecipesArray, id: \.idMeal) { recipe in
                    
                    NavigationLink(destination: RecipeRequestView(recipeID: recipe.idMeal, pageType: "By ID")) {
                        CategoryCard(recipe: recipe)
                    }.buttonStyle(PlainButtonStyle())
                        .padding(.vertical,7)
                        .padding(.horizontal, 5)
                }
                .navigationTitle(category.strCategory)
                .onAppear {
                    countryRecipeModel.fetchByCategory(categoryName: category.strCategory)
                }
            }
        }
        .navigationTitle(category.strCategory)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    CategoryFeedView(category: Category(idCategory: "22", strCategory: "Seafood", strCategoryThumb: URL(string: "https://www.themealdb.com/images/category/beef.png")!, strCategoryDescription: "sss"))
}
