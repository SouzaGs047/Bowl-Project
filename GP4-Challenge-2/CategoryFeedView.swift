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
                .navigationTitle(category.strCategory)
            .onAppear {
                countryRecipeModel.fetchByCategory(categoryName: category.strCategory)
            }
            }
            }
        }
    }


//#Preview {
//    CategoryFeedView(category: Category(idCategory: "22", strCategory: "Seafood", strCategoryThumb: "ss", strCategoryDescription: "sss"))
//}
