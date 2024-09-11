/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import Foundation

class CountryRecipeModel: ObservableObject {
    @Published var countryRecipesArray: [CountryRecipe] = []
    
    func fetchByCountry(countryName: String) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?a=\(countryName)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let countryRecipeResponse = try JSONDecoder().decode(CountryRecipeResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.countryRecipesArray = countryRecipeResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    func fetchByCategory(categoryName: String) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=\(categoryName)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let countryRecipeResponse = try JSONDecoder().decode(CountryRecipeResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.countryRecipesArray = countryRecipeResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
