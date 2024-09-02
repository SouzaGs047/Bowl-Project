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
                Text("Bookmarks")
            }
            .tag(4)
        })
        .tint(.redBase)
        
    }
}


extension UITabBarController {
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 0
        // Choose with corners should be rounded
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner] // top left, top right

        // Uses `accessibilityIdentifier` in order to retrieve shadow view if already added
        if let shadowView = view.subviews.first(where: { $0.accessibilityIdentifier == "TabBarShadow" }) {
            shadowView.frame = tabBar.frame
        } else {
            let shadowView = UIView(frame: .zero)
            shadowView.frame = tabBar.frame
            shadowView.accessibilityIdentifier = "TabBarShadow"
            shadowView.backgroundColor = UIColor.white
            shadowView.layer.cornerRadius = tabBar.layer.cornerRadius
            shadowView.layer.maskedCorners = tabBar.layer.maskedCorners
            shadowView.layer.masksToBounds = false
            shadowView.layer.shadowColor = Color.black.cgColor
            shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 7.0)
            shadowView.layer.shadowOpacity = 0.5
            shadowView.layer.shadowRadius = 7
            view.addSubview(shadowView)
            view.bringSubviewToFront(tabBar)
        }
    }
}

#Preview {
    ContentView()
}
