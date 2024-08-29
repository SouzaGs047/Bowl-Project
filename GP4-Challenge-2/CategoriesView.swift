import SwiftUI

struct CategoriesView: View {
    @StateObject var categoryModel = CategoryModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(categoryModel.categoriesArray, id: \.idCategory) { category in
                    VStack {
                        CategoryCardView(category: category)
                                              
                    }
                        
                }
            }
            .navigationTitle("Categories")
        }
        .onAppear {
            categoryModel.fetch()
        }
    }
}

#Preview {
    CategoriesView()
}
