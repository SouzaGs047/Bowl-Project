//
//  CountryCardView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import SwiftUI

struct CountryCard: View {
    let country: String
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                ZStack {
                    Image("\(country).meal")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 169)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    
                        .foregroundStyle(
                            .blue.gradient.shadow(.inner(color: .white.opacity(0.3), radius: 40, x: 1, y: 1))
                        )
                    VStack {
                        Spacer()
                        HStack{
                            Spacer()
                            VStack {
                                Image(country)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 37.5, height: 25)
                                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                                
                                
                                
                            }     .padding([.bottom, .trailing], 10.4)
                        }
                    }
                }
                
                HStack {
                    Text(country)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("supportColor"))
                        .padding(.leading)
                    Spacer()
                }

                
                Spacer()
                Spacer()
            }.frame(width: 168, height: 211)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("tertiaryColor")/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            
            
        }
    }
}

#Preview {
    CountryCard(country: "British")
}

