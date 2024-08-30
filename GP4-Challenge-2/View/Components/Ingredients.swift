//
//  SwiftUIView.swift
//  GP4-Challenge-2
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 28/08/24.
//
//
import SwiftUI
import Foundation

struct Ingredients: View {
    
    var measure: String?
    var ingredient: String?
    
    var body: some View {
            if (ingredient ?? "" != "" ) {
                Text("\(measure ?? "") of \(ingredient ?? "")")
        }
    }
}

#Preview {
    Ingredients(measure: "julieta", ingredient: "")
}


