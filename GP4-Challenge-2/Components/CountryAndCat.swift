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
    
    var body: some View {
        HStack{
            Text(category)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 50).fill(.cyan))
            Spacer()
            HStack{
                Image(country)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .padding()
                Text(country)
            }
        }.frame(maxWidth: 250)
    }
}


#Preview {
    CountryAndCat(country: "Mexican", category: "Beef")
}
