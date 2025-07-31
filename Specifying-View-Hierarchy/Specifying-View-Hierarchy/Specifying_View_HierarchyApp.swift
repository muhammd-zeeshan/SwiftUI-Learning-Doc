//
//  Specifying_View_HierarchyApp.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI

@main
struct Specifying_View_HierarchyApp: App {
    var body: some Scene {
      #if os(iOS)
              MyScene()
      #elseif os(macOS)
              MyAlternativeScene()
      #endif
    }
}
