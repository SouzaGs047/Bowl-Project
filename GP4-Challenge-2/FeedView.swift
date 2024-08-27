import SwiftUI

struct FeedView: View {
    @StateObject var recipeModel = RecipeModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    VStack {
                        Card(recipe: meal)
                        
                        
//                        HStack{
//                            AsyncImage(url: meal.strMealThumb){result in result.image?
//                                    .resizable()
//                                    .scaledToFill()
//                            }.frame(width: 100, height: 100)
//                            
//                            VStack(alignment: .leading){
//                                Text(meal.strMeal)
//                                    .font(.subheadline)
//                                Text(meal.strCategory)
//                                    .font(.caption)
//                                    .foregroundStyle(Color(.gray))
//                                Text(meal.strArea)
//                                    .font(.caption)
//                                    .foregroundStyle(Color(.gray))
//                            }
//                            
//                        }
                        }
                        
                }
            }
            .navigationTitle("Recipes")
            .searchable(text: $searchTerm, prompt: "Search recipe")
            .onChange(of: searchTerm) { _ in
                recipeModel.fetchBySearch(nameRecipe: searchTerm)
            }
        }
    }
}

#Preview {
    FeedView()
}
