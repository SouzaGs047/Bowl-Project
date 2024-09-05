import SwiftUI

struct Card: View {
    let recipe: Recipe
    
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
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        .shadow(radius: 0.3)
                } placeholder: {
                    ProgressView().progressViewStyle(.circular)
                }
                
                
                .frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                VStack(alignment: .leading) {
                    Spacer()
                    Text(recipe.strMeal)
                        .font(.subheadline)
                        .foregroundStyle(.darkGreyBase)
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack {
                        Image(recipe.strArea)
                            .resizable()
                            .frame(width: 34,height: 22)
                            .clipShape(RoundedRectangle(cornerRadius: 3))
                            .shadow(radius: 0.5)
                        Text(recipe.strArea)
                            .font(.caption2)
                            .shadow(radius: 0.5)
                        Spacer()
                        Text(recipe.strCategory)
                            .font(.caption2)
                            .padding(.horizontal,5)
                            .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("aquaBaseColor")))
                            .foregroundColor(.FAFAFA)
                            .fontWeight(.semibold)
                            
                            
                    }.padding(.vertical)
                        .padding(.trailing)
                }
            }
        }
        .padding()
        .frame(height: 150)
        
        
    }
}
