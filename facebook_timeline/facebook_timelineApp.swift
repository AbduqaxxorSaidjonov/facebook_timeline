//
//  facebook_timelineApp.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

@main
struct facebook_timelineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
