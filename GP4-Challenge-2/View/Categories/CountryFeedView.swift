import SwiftUI

struct CountryFeedView: View {
    @StateObject var countryRecipeModel = CountryRecipeModel()
    @StateObject var recipeModel = RecipeModel()
    let country : Country
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(countryRecipeModel.countryRecipesArray, id: \.idMeal) { recipe in
                    
                    NavigationLink(destination: RecipeByIDView(recipeID: recipe.idMeal)) {
                        CategoryCard(recipe: recipe)
                }
                    .buttonStyle(PlainButtonStyle())
                    .frame(height: 150)
                    .padding(.vertical,7)
                    .padding(.horizontal, 5)
                    
                    
                }
                .navigationTitle(country.strArea)
            .onAppear {
                countryRecipeModel.fetchByCountry(countryName: country.strArea)
            }
            }
            }
        }
    }


#Preview {
    CountryFeedView(country: Country(strArea: "Canadian"))
}
