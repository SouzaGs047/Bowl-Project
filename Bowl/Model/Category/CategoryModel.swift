import Foundation

class CategoryModel: ObservableObject {
    @Published var categoriesArray: [Category] = []
        
    func fetch() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let categoryResponse = try JSONDecoder().decode(CategoryResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.categoriesArray = categoryResponse.categories
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }

}
