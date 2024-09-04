
import SwiftUI
import Foundation

struct Ingredients: View {
    
    var measure: String?
    var ingredient: String?
    
    var body: some View {
        
        if (measure?.count == 1 && ingredient ?? "" != ""){
            
           Text("• \(measure ?? "") \(ingredient ?? "");")
            
       } else if (ingredient ?? "" != "") {
                Text("• \(measure ?? "") of \(ingredient ?? "");")
            }
    }
}

#Preview {
    Ingredients(measure: "julieta", ingredient: "")
}


