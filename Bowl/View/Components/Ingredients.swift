
import SwiftUI
import Foundation

struct Ingredients: View {
    
    var measure: String?
    var ingredient: String?
    
    var body: some View {
            if (ingredient ?? "" != "" ) {
                Text("• \(measure ?? "") of \(ingredient ?? "");")
        }
    }
}

#Preview {
    Ingredients(measure: "julieta", ingredient: "")
}


