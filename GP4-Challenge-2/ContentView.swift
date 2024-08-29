//
//  ContentView.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 1
    
    var body: some View {
        NavigationStack {
            TabView (selection: $selectedTab, content: {
                FeedView()
                    .tabItem() {
                        VStack{
                            Image(selectedTab==1 ? "HomeFilled" : "Home")
                                .resizable()
                                .frame(width: 1, height: 1)
                                .scaledToFit()
                            Text("Feed")
                        }
                    }.tag(1)
                
                SliderCategoriesView()
                    .tabItem() {
                        Image(selectedTab==1 ? "Category" : "CategoryFilled")
                            .resizable()
                            .frame(width: 2, height: 2)
                    }.tag(2)
                
                GenerateRandomRecipeView()
                    .tabItem() {
                        Label("Random", image: "Random") }
                
                FavoritesView()
                    .tabItem() {
                        Label("Favorites", image: "Bookmark") }
            }).tint(.base)
        }
    }
}


#Preview {
    ContentView()
}
