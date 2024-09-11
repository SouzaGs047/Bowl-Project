/* Bowl, a project by:
Amanda Caroline
Giulia Cacciaguerra
Gustavo Souza
José Elias */
 
import Foundation

struct CountryRecipeResponse: Hashable, Codable {
    let meals: [CountryRecipe]
}
