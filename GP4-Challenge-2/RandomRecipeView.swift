import SwiftUI

struct RandomRecipeView: View {
    @StateObject var randomRecipeModel = RecipeModel()
    
    var body: some View {
        NavigationView {
                ForEach(randomRecipeModel.recipesArray, id: \.idMeal) { meal in
                    VStack(alignment: .leading) {
                            AsyncImage(url: meal.strMealThumb){result in result.image?
                                    .resizable()
                                    .scaledToFit()
                            }.padding(.leading, 20.0).frame(width: 300)
                            
                            Text(meal.strMeal)
                                .font(.subheadline)
                            
                                Text("\(meal.strCategory) • \(meal.strArea)")
                                    .font(.caption)
                                    .foregroundStyle(Color(.gray))
                                
                        Text(meal.strInstructions)
                            .font(/*@START_MENU_TOKEN@*/.caption2/*@END_MENU_TOKEN@*/)

                        }
            }
            .navigationTitle("Random Recipe")
        }
        .onAppear {
            randomRecipeModel.fetchRandom()
        }
    }
}

#Preview {
    RandomRecipeView()
}
