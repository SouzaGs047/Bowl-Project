//
//  CountryModel.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import Foundation

class CountryModel: ObservableObject {
    @Published var countriesArray: [Country] = []
        
    func fetch() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/list.php?a=list") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Decode JSON response
            do {
                let countryResponse = try JSONDecoder().decode(CountryResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.countriesArray = countryResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }

}
