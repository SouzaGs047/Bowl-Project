//
//  ContentView.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                FeedView()
                    .tabItem() {
                        Label("Feed", systemImage: "square") }
                
                SliderCategoriesView()
                    .tabItem() {
                        Label("Categories", systemImage: "scribble") }
                
                GenerateRandomRecipeView()
                    .tabItem() {
                        Label("Random", systemImage: "highlighter") }
                
                FavoritesView()
                    .tabItem() {
                        Label("Favorites", systemImage: "star") }
            }
        }
    }
}


#Preview {
    ContentView()
}
