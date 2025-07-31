//
//  JournalEntry.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI


struct JournalEntry: Identifiable, Hashable {
    let id: UUID = UUID()
    let createdDate: Date
    var text = ""
    
    init(createdDate: Date = Date(), text: String = "") {
        self.createdDate = createdDate
        self.text = text
    }
}
