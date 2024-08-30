//
//  CountryCardView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import SwiftUI

struct CountryCard: View {
    let country: String
    let flag : String
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack{
                Image(flag)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
                
                Text(country)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("supportColor"))
            }
        }.frame(width: 150, height: 150)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 5)
            .shadow(radius: 0.5)
    }
}

#Preview {
    CountryCard(country: "Canada", flag: "Canadian")
}

