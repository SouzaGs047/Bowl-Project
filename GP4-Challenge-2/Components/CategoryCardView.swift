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
            HStack {
                AsyncImage(url: category.strCategoryThumb){result in result.image?
                        .resizable()
                        .scaledToFill()
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
            .frame(height: 150)
        }
    }
}

#Preview {
    CategoryCardView(category: Category(idCategory: "pp", strCategory: "Desserts", strCategoryThumb: URL(string: "aaa")!, strCategoryDescription: "sss"))
}
