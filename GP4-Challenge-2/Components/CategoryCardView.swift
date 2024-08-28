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
        VStack {
            HStack{
                Spacer()
                AsyncImage(url: category.strCategoryThumb){result in result.image?
                        .resizable()
                        .scaledToFill()
                }.frame(width: 100, height: 100)
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text(category.strCategory)
                        .font(.subheadline)
                }
                Spacer()
            }
        }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        
    }
}

