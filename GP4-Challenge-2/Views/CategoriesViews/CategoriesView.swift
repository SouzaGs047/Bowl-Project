import SwiftUI

struct CategoriesView: View {
    @StateObject var categoryModel = CategoryModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categoryModel.categoriesArray, id: \.idCategory) { category in
                    VStack {
                        HStack{
                            AsyncImage(url: category.strCategoryThumb){result in result.image?
                                    .resizable()
                                    .scaledToFill()
                            }.frame(width: 100, height: 100)
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text(category.strCategory)
                                    .font(.subheadline)
                            }
                            
                        }
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
