//
//  CountriesView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import Foundation

import SwiftUI

struct CountriesView: View {
    @StateObject var countryModel = CountryModel()
    let flag: Image
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(countryModel.countriesArray, id: \.self) { country in
                    if (country.strArea != "Unknown") {
                        CountryCard(country: country.strArea, flag: country.strArea)
                    }
                }
            }
            .navigationTitle("Countries")
        }
        .onAppear {
            countryModel.fetch()
        }
    }
}

#Preview {
    CountriesView(flag: Image("Canadian"))
}
