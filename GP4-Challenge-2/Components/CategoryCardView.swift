//
//  CategoryCardView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import SwiftUI

struct CategoryCardView: View {
    let category : Category
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.thinMaterial)
                .frame(height: 150)
            HStack {
                AsyncImage(url: category.strCategoryThumb){result in result.image?
                        .resizable()
                        .scaledToFit()
                }.frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                VStack(alignment: .leading) {
                    Text(category.strCategory)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("supportColor"))
                }
            }
            .padding(.horizontal)
        }
        .padding()
        .padding(.top,5)
        .frame(height: 150)
        .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 5)
        .shadow(radius: 0.5)
    }
}

#Preview {
    CategoryCardView(category: Category(idCategory: "1", strCategory: "Beef", strCategoryThumb: URL(string: "https://www.themealdb.com/images/category/beef.png")!, strCategoryDescription: "sss"))
}
