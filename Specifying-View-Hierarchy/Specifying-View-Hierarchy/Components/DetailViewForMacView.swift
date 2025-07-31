//
//  DetailView.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//


import SwiftUI

struct DetailViewForMacView: View {
    @Binding var selectedEntry: JournalEntry?
    
    var body: some View {
        if let entry = selectedEntry {
            JournalEntryView(journalEntry: entry)
        } else {
            Text("Select a journal entry")
        }
    }
}
