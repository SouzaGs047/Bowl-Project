//
//  CountryCardView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import SwiftUI

struct CountryCard: View {
    let country : String
//     let flag : String
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "flag.fill")
                .resizable()
                .scaledToFit()
                .border(Color.black)
                .frame(width: 60)
            
            Text(country)
                .padding(.top, 10.0)
            Spacer()
        }
        .frame(width: 150, height: 150)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(white: 0.803)/*@END_MENU_TOKEN@*/)
            .shadow(radius: 2)
        
    }
}

#Preview {
    CountryCard(country: "Canada")
}

