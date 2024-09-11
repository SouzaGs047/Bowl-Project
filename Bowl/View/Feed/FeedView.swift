/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI
import SwiftData

struct FeedView: View {
    @Environment(\.modelContext) private var modelContext
    
    @StateObject var recipeModel = RecipeModel()
    @Query private var items: [RecipeStorage]
    
    @State private var searchTerm = ""
    @State var hasFetched = false
    @State var randomLetter = "a"
    
    var body: some View {
        VStack {
            ScrollView{
                HStack{
                    Text("Suggestions")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal,17)
                    Spacer()
                }
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    NavigationLink(destination: RecipeView(recipe: meal)){
                        Card(recipe: meal)
                            .padding(.bottom, 12)
                    }.buttonStyle(PlainButtonStyle())
                }
                .searchable(text: $searchTerm, prompt: "Search recipes")
                .onAppear(){
                    if(searchTerm.isEmpty && !hasFetched){
                        recipeModel.fetchBySearch(nameRecipe: randomLetter)
                        
                        hasFetched = true
                    }
                }
                .onChange(of: searchTerm) { _ in
                    if(searchTerm.isEmpty){
                        recipeModel.fetchBySearch(nameRecipe: randomLetter)
                    } else {
                        recipeModel.fetchBySearch(nameRecipe: searchTerm)
                    }
                    
                }
            }
        }
        .navigationTitle("Recipes")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FeedView()
}


