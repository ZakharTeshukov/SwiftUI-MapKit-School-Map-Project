//
//  SwiftUI_Knowledge_Wiki_2_0App.swift
//  SwiftUI Knowledge Wiki 2.0
//
//  Created by Zakhar Teshukov on 4/27/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_Knowledge_Wiki_2_0App: App {
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
