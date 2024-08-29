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
                .onAppear(){
                    let randomLetter: String = randomAlphanumericString(1)
                    recipeModel.fetchBySearch(nameRecipe: randomLetter)
                }
                .onChange(of: searchTerm) { _ in
                    if(searchTerm == ""){
                        let randomLetter: String = randomAlphanumericString(1)
                        recipeModel.fetchBySearch(nameRecipe: randomLetter)
                    } else {
                        recipeModel.fetchBySearch(nameRecipe: searchTerm)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
