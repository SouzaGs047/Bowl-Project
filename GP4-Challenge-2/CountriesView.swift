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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(countryModel.countriesArray, id: \.self) { country in
                    VStack {
                        Text(country.strArea)
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
    CountriesView()
}
