import SwiftUI

//struct MealModel: Codable {
//    var idMeal: Int
//    var strMeal: String
//    var strCategory: String
//    var strArea: String
//    var strMealThumb: String
//}

struct ContentView: View {
    @State private var meals = [MealModel]()
    
    var body: some View {
        Text("ssss")
        //        NavigationView {
        //            Button("Clique Aqui", action: { print(meals[0].strMeal)
        //            }
        //                )
        //
        //        }.task {
        //            await fetchData()}
        //        }
    }

    
//    func fetchData() async {
//        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata") else {
//            print("This URL is not working!")
//            return
//            }
//        
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            
//            if let decodedResponse = try? JSONDecoder().decode([MealModel].self, from: data) {
//                meals = decodedResponse
//            }
//        } catch {
//            print("These data are not valid")
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
