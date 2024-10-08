/* Bowl, a project by:
Amanda Caroline
Giulia Cacciaguerra
Gustavo Souza
José Elias */
 
import Foundation

class RecipeModel: ObservableObject {
    @Published var recipesArray: [Recipe] = []
    
    func fetchBySearch(nameRecipe:String) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=\(nameRecipe)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Decode JSON response
            do {
                let recipeResponse = try JSONDecoder().decode(RecipeResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.recipesArray = recipeResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    func fetchByID(id: String) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Decode JSON response
            do {
                let recipeResponse = try JSONDecoder().decode(RecipeResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.recipesArray = recipeResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    
    func fetchRandom() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/random.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Decode JSON response
            do {
                let recipeResponse = try JSONDecoder().decode(RecipeResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.recipesArray = recipeResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
