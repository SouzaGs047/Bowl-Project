//
//  País.swift
//  GP4-Challenge-2
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 28/08/24.
//

import SwiftUI

struct CountryAndCat: View {
    let country: String
    let category: String
    let image: URL
    
    var body: some View {
        HStack{
            Text(category)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 50).fill(.cyan))
            Spacer()
            HStack{
                AsyncImage(url: image) {result in result.image?
                        .resizable()
                        .scaledToFill()
                }.frame(width: 40, height: 40)}
            Text(country)
        }.frame(maxWidth: 250)
    }
}


#Preview {
    CountryAndCat(country: "Mexico", category: "Beef", image: URL(string: "https://www.themealdb.com/images/icons/flags/big/64/mx.png")!)
}
