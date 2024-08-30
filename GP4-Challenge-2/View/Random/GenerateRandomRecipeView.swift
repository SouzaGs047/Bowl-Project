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
                Spacer()
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
                        .background(Color("secondaryColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
                
                Spacer()
                Spacer()
            }.navigationTitle("Random Recipe")
        })
    }
}

#Preview {
    GenerateRandomRecipeView()
}
