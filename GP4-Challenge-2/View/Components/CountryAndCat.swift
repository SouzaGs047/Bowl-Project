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
                .padding(.horizontal, 7)
                .background(RoundedRectangle(cornerRadius: 50).fill(Color("secondaryColor")))
                
    
            CountryAndFlag(country: country)
                Spacer()
            
        }
    }
}


#Preview {
    CountryAndCat(country: "Mexican", category: "Beef")
}
