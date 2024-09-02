//
//  GenerateRandomRecipeView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import SwiftUI

struct GenerateRandomRecipeView: View {
    var body: some View {
            VStack{
                
                Spacer()
                Image("bowl")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 190)
                    .padding(.bottom, 30)
                    
                    
                NavigationLink(destination: RandomRecipeView()) {
                    
                    Text("Randomize")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(8)
                        .padding(.horizontal, 20)
                        .foregroundStyle(.white)
                        .background(Color("aquaBaseColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 5)
                }
                
                
                Spacer()
            }.navigationTitle("Random Recipe")
       
    }
}

#Preview {
    GenerateRandomRecipeView()
}
