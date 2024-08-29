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
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
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
                
                //MARK: CATEGORIES
                ScrollView {
                    ForEach(categoryModel.categoriesArray, id: \.idCategory) { category in
                        NavigationLink(destination: CategoryFeedView(category: category)) {
                            CategoryCardView(category: category)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                .tabItem {
                }
                .tag(1)
                
                
                
                //MARK: COUNTRIES
                
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 25) {
                        ForEach(countryModel.countriesArray, id: \.self) { country in
                            NavigationLink(destination: CountryFeedView(country: country)) {
                                //CountryCard(country: country)
                            }.buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                    .padding(.horizontal, 25.0)
                    .padding(.top, 10)
                }.tabItem {
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
