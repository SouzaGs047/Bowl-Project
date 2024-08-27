//
//  GenerateRandomRecipeView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import SwiftUI

struct GenerateRandomRecipeView: View {
    var body: some View {
        NavigationView(content: {
            VStack{
                Image("chef")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                NavigationLink(destination: RandomRecipeView()) {
                    
                    Text("Generate Recipe")
                        .font(.largeTitle)
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color(.orange))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
                
                Spacer()
            }.navigationTitle("Recipes")
        })
    }
}

#Preview {
    GenerateRandomRecipeView()
}
