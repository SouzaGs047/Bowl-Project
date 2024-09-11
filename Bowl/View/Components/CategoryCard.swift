/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct CategoryCard: View {
    let recipe: CountryRecipe
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15.0)
                .fill(.thinMaterial)
                .shadow(color: .black.opacity(0.03), radius: 3, x: 0, y: 5)
                .shadow(radius: 0.5)
            HStack {
                AsyncImage(url: recipe.strMealThumb){result in
                    result.resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView().progressViewStyle(.circular)
                }
                .frame(width: 150,height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                VStack(alignment: .leading) {
                    Text(recipe.strMeal)
                        .font(.subheadline)
                        .foregroundStyle(.darkGreyBase)
                        .font(.headline)
                        .bold()
                        .padding(.trailing)
                }
            }
        }
        .padding()
        .frame(height: 150)
    }
    
    
}
