//
//  SwiftUIView.swift
//  GP4-Challenge-2
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 28/08/24.
//

import SwiftUI
import Foundation


struct Ingredients: View {
    
    var ingredient: String
    var measure: String
    
    var body: some View {
            if (ingredient != "" && measure != "") {
                Text("\(ingredient) - \(measure)")
        }
    }
}

#Preview {
    Ingredients(ingredient: "", measure: "julieta")
}


