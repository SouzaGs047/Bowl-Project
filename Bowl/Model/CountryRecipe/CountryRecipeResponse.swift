import Foundation

struct CountryRecipeResponse: Hashable, Codable {
    let meals: [CountryRecipe]
}
