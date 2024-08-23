//
//  ContentView.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 22/08/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
        AsyncImage(url: URL(string: "https://yt3.googleusercontent.com/fqVEkuSr9CdD3yi8gDkZYebDE_d5UIuvtb-bvuja_xPQSPu6GSS7ha4c2rcJPNQIvXe6FUqOJvU=s900-c-k-c0x00ffffff-no-rj")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
        
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
