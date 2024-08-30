import SwiftUI

struct FeedView: View {
    @StateObject var recipeModel = RecipeModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            ScrollView{
                HStack{
                    Text("Recommendations")
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
                .navigationTitle("Recipes")
                .searchable(text: $searchTerm, prompt: "Search recipes")
                .onAppear(){
                    if(searchTerm.isEmpty){
                        let randomLetter: String = randomChar()
                        recipeModel.fetchBySearch(nameRecipe: randomLetter)
                    }
                }
                .onChange(of: searchTerm) { _ in
                    if(searchTerm.isEmpty){
                        let randomLetter: String = randomChar()
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


