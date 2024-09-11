/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct CountryAndCat: View {
    let country: String
    let category: String
    
    var body: some View {
        HStack{
            
            Text(category)
                .foregroundStyle(.FAFAFA)
                .fontWeight(.semibold)
                .padding(.horizontal, 8)
                .background(RoundedRectangle(cornerRadius: 50).fill(Color("aquaBaseColor")))
                .font(.footnote)
            
            Spacer()
            CountryAndFlag(country: country)
                .font(.footnote)
        }
    }
}


#Preview {
    CountryAndCat(country: "Mexican", category: "Beef")
}
