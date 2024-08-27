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
                .fill(.secondary)
                HStack {
                    AsyncImage(url: recipe.strMealThumb){result in result.image?
                            .resizable()
                            .scaledToFill()
                    }.frame(minWidth: 50, idealWidth: 100, maxWidth: 150, minHeight: 50, idealHeight: 100, maxHeight: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    VStack(alignment: .leading) {
                        Text("Recipe Name")
                            .font(.subheadline)
                        Text("Category")
                            .font(.caption)
                        HStack {
                            Rectangle()
                                .frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 10, idealHeight: 20, maxHeight: 30)
                            Text("Country")
                                .font(.caption)
                        }
                        
                    }
                }
        }
        .padding(.all)
            .frame(minHeight: 50, idealHeight: 100, maxHeight: 150)
    }
}

#Preview {
    Card(recipe: Recipe(idMeal: "arrebiata", strMeal: "arrebiata", strCategory: "arrebiata", strArea: "arrebiata", strInstructions: "arrebiata", strMealThumb: URL(string: "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg")!))
}
