//
//  GenerateRandomRecipeView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import SwiftUI

struct GenerateRandomRecipeView: View {
    var body: some View {
        NavigationLink(destination: RandomRecipeView()) {
            Text("Generate Random Recipe")
        }
    }
}

#Preview {
    GenerateRandomRecipeView()
}
