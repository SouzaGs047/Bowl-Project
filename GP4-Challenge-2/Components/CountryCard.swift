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
            }
        }.frame(width: 150, height: 150)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(radius: 2)
            

            
        
    }
}

#Preview {
    CountryCard(country: "Canada", flag: "Canadian")
}

