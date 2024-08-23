import SwiftUI

// Define the structure to match the API response
struct MealResponse: Hashable, Codable {
    let meals: [Meal]
}

struct Meal: Hashable, Codable {
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strArea: String
    let strMealThumb: URL
}

class MealModel: ObservableObject {
    @Published var mealsArray: [Meal] = []
    
    func fetch() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Decode JSON response
            do {
                let mealResponse = try JSONDecoder().decode(MealResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.mealsArray = mealResponse.meals
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

struct ChamadaAPIView: View {
    @StateObject var mealModel = MealModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(mealModel.mealsArray, id: \.idMeal) { meal in
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
            mealModel.fetch()
        }
    }
}

#Preview {
    ChamadaAPIView()
}
