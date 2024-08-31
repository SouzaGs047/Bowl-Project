//
//  ContentView.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 27/08/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [RecipeStorage]
    
    
    @State var selectedTab = 1
    
    var body: some View {
        TabView (selection: $selectedTab, content: {
            NavigationStack {
                FeedView()
            }
            .tabItem() {
                Image(selectedTab==1 ? "home.fill" : "home")
                Text("Feed")
            }
            .tag(1)
            
            NavigationStack {
                SliderCategoriesView()
                    .navigationBarHidden(true)
            }
            .tabItem() {
                Image(selectedTab == 2 ? "category.fill" : "category")
                Text("Categories")
            }
            .tag(2)
            
            
            NavigationStack {
                GenerateRandomRecipeView()
            }
            .tabItem() {
                Image(selectedTab == 3 ? "random.fill" : "random")
                Text("Random")
            }
            .tag(3)
            
            NavigationStack {
                FavoritesView()
                
            }.tabItem() {
                Image(selectedTab == 4 ? "bookmark.fill" : "bookmark")
                Text("Favorites")
            }
            .tag(4)
        })
        .tint(.base)
        
    }
}


#Preview {
    ContentView()
}
