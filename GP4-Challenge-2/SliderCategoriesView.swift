//
//  SliderCategoriesView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 27/08/24.
//

import SwiftUI

struct SliderCategoriesView: View {
    @StateObject var categoryModel = CategoryModel()
    @StateObject var countryModel = CountryModel()


    @State var selectedTab : Int = 1
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Categories")
                        .foregroundColor(selectedTab == 1 ? .blue : .black)
                })
                
           
                Text (" | ")
                
                    
                
                    Button(action: {
                        selectedTab = 2
                    }, label: {
                        Text("Countries")
                            .foregroundColor(selectedTab == 2 ? .blue : .black)
                    })
                 
                
            }
            
            TabView(selection: $selectedTab,
                    content:  {
                
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
                    .tabItem {
                    }
                    .tag(1)
            
               
                
            List {
                ForEach(countryModel.countriesArray, id: \.self) { country in
                    VStack {
                        Text(country.strArea)
                        }
                        
                }
            } .tabItem {
            }
            .tag(2)
    })        .tabViewStyle(.page(indexDisplayMode: .never))
            
            
            
            
        } .onAppear {
            categoryModel.fetch()
            countryModel.fetch()
        }
        
        
    }
}


#Preview {
    SliderCategoriesView()
}
