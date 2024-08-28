//
//  Card.swift
//  GP4-Challenge-2
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 27/08/24.
//

import SwiftUI

struct Card: View {
    let recipe: Recipe
    
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.thinMaterial)
            HStack {
                AsyncImage(url: recipe.strMealThumb){result in result.image?
                        .resizable()
                        .scaledToFill()
                }.frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                VStack(alignment: .leading) {
                    Text(recipe.strMeal)
                        .font(.subheadline)
                        .foregroundStyle(.black)
                    Text(recipe.strCategory)
                        .font(.caption)
                    HStack {
                        Rectangle()
                            .frame(width: 50,height: 30)
                        Text(recipe.strArea)
                            .font(.caption)
                    }
                }
            }
        }
        .padding(.horizontal)
        .frame(height: 150)
    }
}


