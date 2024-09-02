import SwiftUI

struct CountryAndCat: View {
    let country: String
    let category: String
    
    var body: some View {
        HStack{

            Text(category)
                .foregroundStyle(.FAFAFA)
                .fontWeight(.semibold)
                .padding(.horizontal, 12)
                .background(RoundedRectangle(cornerRadius: 50).fill(Color("aquaBaseColor")))
                
            Spacer()
            CountryAndFlag(country: country)

        }
    }
}


#Preview {
    CountryAndCat(country: "Mexican", category: "Beef")
}
