import SwiftUI

struct FeedView: View {
    @StateObject var recipeModel = RecipeModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    
                    NavigationLink(destination: RecipeView(recipe: meal)){
                        Card(recipe: meal)
                    
                    }.buttonStyle(PlainButtonStyle())
                    
                    
                }
            .navigationTitle("Recipes")
            .searchable(text: $searchTerm, prompt: "Search recipes")
            .onChange(of: searchTerm) { _ in
                recipeModel.fetchBySearch(nameRecipe: searchTerm)
            }
            }
        }
    }
}

#Preview {
    FeedView()
}
