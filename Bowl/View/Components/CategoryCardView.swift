/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct CategoryCardView: View {
    let category : Category
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.thinMaterial)
                .frame(height: 150)
                .shadow(color: .black.opacity(0.03), radius: 3, x: 0, y: 5)
                .shadow(radius: 0.5)
            HStack {
                AsyncImage(url: category.strCategoryThumb){result in
                    result.resizable()
                        .aspectRatio(contentMode: category.strCategory == "Goat" || category.strCategory == "Breakfast" ? .fill : .fit)
                    
                } placeholder: {
                    ProgressView().progressViewStyle(.circular)
                }
                .frame(width: 150, height: 150)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .scaledToFill()
                VStack(alignment: .leading) {
                    HStack {
                        Text(category.strCategory)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("darkGreyBaseColor"))
                            .padding(.horizontal)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.2)
                            .bold()
                            .padding(.trailing)
                    }
                }
            }
        }
        .padding()
        .padding(.top,5)
        .frame(height: 150)
        
    }
}

#Preview {
    CategoryCardView(category: Category(idCategory: "1", strCategory: "Goat", strCategoryThumb: URL(string: "https://www.themealdb.com/images/category/goat.png")!, strCategoryDescription: "sss"))
}
