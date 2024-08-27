import SwiftUI

struct FeedView: View {
    @StateObject var recipeModel = RecipeModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    Card(recipe: meal)
                }.listRowBackground(Color.secondary)
            .navigationTitle("Recipes")
            .searchable(text: $searchTerm, prompt: "Search recipe")
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
