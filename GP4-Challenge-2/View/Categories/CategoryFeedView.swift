import SwiftUI

struct CategoryFeedView: View {
    @StateObject var countryRecipeModel = CountryRecipeModel()
    @StateObject var recipeModel = RecipeModel()
    let category : Category
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(countryRecipeModel.countryRecipesArray, id: \.idMeal) { recipe in
                    
                    NavigationLink(destination: RecipeByIDView(recipeID: recipe.idMeal)) {
                        CategoryCard(recipe: recipe)
                    }.buttonStyle(PlainButtonStyle())
                        .frame(height: 150)
                        .padding(.vertical,7)
                        .padding(.horizontal, 5)
                }
                .navigationTitle(category.strCategory)
                .onAppear {
                    countryRecipeModel.fetchByCategory(categoryName: category.strCategory)
                }
            }
        }
    }
}


#Preview {
    CategoryFeedView(category: Category(idCategory: "22", strCategory: "Seafood", strCategoryThumb: URL(string: "https://www.themealdb.com/images/category/beef.png")!, strCategoryDescription: "sss"))
}
