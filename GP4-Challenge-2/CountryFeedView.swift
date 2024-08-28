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
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.thinMaterial)
                        HStack {
                            AsyncImage(url: recipe.strMealThumb){result in result.image?
                                    .resizable()
                                    .scaledToFill()
                            }.frame(width: 150,height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            
                            VStack(alignment: .leading) {
                                Text(recipe.strMeal)
                                    .font(.subheadline)
                                    .foregroundStyle(.red)
                                
                            }
                        }
                        
                        
                        
                        
                    }
                }.buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                        .frame(height: 150)
                    
                    
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
