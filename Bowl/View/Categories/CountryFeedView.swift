/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct CountryFeedView: View {
    @StateObject var countryRecipeModel = CountryRecipeModel()
    @StateObject var recipeModel = RecipeModel()
    let country : Country
    
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
                .navigationTitle(country.strArea)
                .onAppear {
                    countryRecipeModel.fetchByCountry(countryName: country.strArea)
                }
            }
        }
        .navigationTitle(country.strArea)
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    CountryFeedView(country: Country(strArea: "Canadian"))
}
