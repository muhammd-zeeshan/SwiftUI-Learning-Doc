//
//  MyAlternativeScene.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}
