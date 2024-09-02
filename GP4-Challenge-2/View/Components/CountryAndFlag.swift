//
//  CountryAndFlag.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 30/08/24.
//

import SwiftUI

struct CountryAndFlag: View {
    let country: String
    
    var body: some View {
        HStack{
            Text(country)
                .foregroundStyle(.greyBase)
                .fontWeight(.semibold)
            Image(country)
                .resizable()
                .scaledToFill()
                .frame(width: 25, height: 25)
                .padding(5)
                .shadow(radius: 0.5)
        }
    }
}

#Preview {
    CountryAndFlag(country: "Canadian")
}
