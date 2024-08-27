import SwiftUI

struct FeedView: View {
    @StateObject var recipeModel = RecipeModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    VStack {
                        HStack{
                            AsyncImage(url: meal.strMealThumb){result in result.image?
                                    .resizable()
                                    .scaledToFill()
                            }.frame(width: 100, height: 100)
                            
                            VStack(alignment: .leading){
                                Text(meal.strMeal)
                                    .font(.subheadline)
                                Text(meal.strCategory)
                                    .font(.caption)
                                    .foregroundStyle(Color(.gray))
                                Text(meal.strArea)
                                    .font(.caption)
                                    .foregroundStyle(Color(.gray))
                            }
                            
                        }
                        }
                        
                }
            }
            .navigationTitle("Recipes")
        }
        .onAppear {
            recipeModel.fetchBySearch(nameRecipe: "biata")
        }
    }
}

#Preview {
    FeedView()
}
