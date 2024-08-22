//
//  GP4_Challenge_2App.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 22/08/24.
//

import SwiftUI
import SwiftData

@main
struct GP4_Challenge_2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
