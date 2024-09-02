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
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(selectedTab == 1 ? Color("redBaseColor") : Color("greyBaseColor"))
                        .overlay (
                            
                            RoundedRectangle(cornerRadius: 2)
                                .frame(width: selectedTab == 1 ? 115 : 0, height: selectedTab == 1 ? 3 : 0)
                                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("aquaBaseColor"))
                        )
                })
                
                Text (" | ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("greyBaseColor"))
                
                VStack {
                    Button(action: {
                        selectedTab = 2
                    }, label: {
                        Text("Countries")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(selectedTab == 2 ? Color("redBaseColor") : Color("greyBaseColor"))
                            .overlay (
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: selectedTab == 2 ? 100 : 0, height: selectedTab == 2 ? 3 : 0)
                                    .offset(x: 0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/15.0)
                                    .foregroundColor(Color("aquaBaseColor"))
                            )
                    })
                }
            }
            .padding(.bottom, 15)
            .frame(height: 60)
            
            TabView(selection: $selectedTab,
                    content:  {
                
                //MARK: CATEGORIES
                ScrollView {
                    ForEach(categoryModel.categoriesArray, id: \.idCategory) { category in
                        NavigationLink(destination: CategoryFeedView(category: category)) {
                            CategoryCardView(category: category)
                                .padding(.bottom,10)
                                .padding(.top, 1)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
                .navigationTitle("Categories")
                .tabItem {
                }
                .tag(1)
                
                
                
                //MARK: COUNTRIES
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(countryModel.countriesArray, id: \.self) { country in
                            NavigationLink(destination: CountryFeedView(country: country)) {
                                CountryCard(country: country.strArea)
                            }.buttonStyle(PlainButtonStyle())
                                .padding(.top, 1)
                                .padding(.bottom, 20)
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    
                }
                .navigationTitle("Countries")
                .tabItem {
                }
                .tag(2)
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .onAppear {
            categoryModel.fetch()
            countryModel.fetch()
        }
    }
}


#Preview {
    SliderCategoriesView()
}
