import SwiftUI

// Define the structure to match the API response
struct RecipeResponse: Hashable, Codable {
    let meals: [Recipe]
}


class RecipeModel: ObservableObject {
    @Published var recipesArray: [Recipe] = []
    
    func fetchBySearch() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=A") else {
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

struct ChamadaAPIView: View {
    @StateObject var recipeModel = RecipeModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipeModel.recipesArray, id: \.idMeal) { meal in
                    VStack {
                        HStack{
                            AsyncImage(url: meal.strMealThumb){result in result.image?
                                    .resizable()
                                    .scaledToFill()
                            }.frame(width: 120, height: 120)
                            Spacer()
                            VStack(alignment: .leading){
                                Text(meal.strMeal)
                                Text(meal.strCategory)
                                Text(meal.strArea)
                            }
                            Spacer()
                        }
                        }
                        
                }
            }
            .navigationTitle("Refeições")
        }
        .onAppear {
            recipeModel.fetchBySearch()
        }
    }
}

#Preview {
    ChamadaAPIView()
}
