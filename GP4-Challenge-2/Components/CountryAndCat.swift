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
        HStack(spacing: 30){
            Spacer()
            Text(category)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 50).fill(.cyan))
    
            HStack{
                Image(country)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .padding()
                Text(country)
            }
                Spacer()
            
        }
    }
}


#Preview {
    CountryAndCat(country: "Mexican", category: "Beef")
}
