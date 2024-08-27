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
                    }.frame(minWidth: 50, idealWidth: 100, maxWidth: 150, minHeight: 50, idealHeight: 100, maxHeight: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    VStack(alignment: .leading) {
                        Text(recipe.strMeal)
                            .font(.subheadline)
                        Text(recipe.strCategory)
                            .font(.caption)
                        HStack {
                            Rectangle()
                                .frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 10, idealHeight: 20, maxHeight: 30)
                            Text(recipe.strArea)
                                .font(.caption)
                        }
                        
                    }
                }
        }
        .padding(.horizontal)
            .frame(minHeight: 50, idealHeight: 100, maxHeight: 150)
    }
}


