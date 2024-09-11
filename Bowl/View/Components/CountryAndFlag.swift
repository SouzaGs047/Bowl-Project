/* Bowl, a project by:
Amanda Caroline
Giulia Cacciaguerra
Gustavo Souza
José Elias */
 
import SwiftUI

struct CountryAndFlag: View {
    let country: String
    
    var body: some View {
        HStack{
            Text(country)
                .foregroundStyle(.greyBase)
                .fontWeight(.semibold)
            Image(country)
                .resizable()
                .scaledToFill()
                .frame(width: 34, height: 22)
                .clipShape(RoundedRectangle(cornerRadius: 3))
                .shadow(radius: 0.3)
            
        }
    }
}

#Preview {
    CountryAndFlag(country: "Canadian")
}
