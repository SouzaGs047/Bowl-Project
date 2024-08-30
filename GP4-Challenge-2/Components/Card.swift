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
            RoundedRectangle(cornerRadius: 15.0)
                .fill(.thinMaterial)
                .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 5)
                .shadow(radius: 0.5)
            HStack {
                AsyncImage(url: recipe.strMealThumb){result in result.image?
                        .resizable()
                        .scaledToFill()
                }.frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                VStack(alignment: .leading) {
                    Text(recipe.strMeal)
                        .font(.subheadline)
                        .foregroundStyle(.black)
                    Text(recipe.strCategory)
                        .font(.caption)
                    HStack {
                        Image(recipe.strArea)
                            .resizable()
                            .frame(width: 45,height: 30)
                        Text(recipe.strArea)
                            .font(.caption)
                    }
                }
            }
        }
        .padding()
        .frame(height: 150)
        
        
    }
}
