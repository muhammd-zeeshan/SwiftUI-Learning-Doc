//
//  ContentView.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI

struct ContentViewIOS: View {
    @StateObject private var journal = Journal()
    
    var body: some View {
        NavigationStack {
            List(journal.entries) { entry in
                NavigationLink(value: entry) {
                    JournalEntryListItem(journalEntry: entry)
                }
            }
            .navigationDestination(for: JournalEntry.self) { entry in
                JournalEntryView(journalEntry: entry)
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addSampleEntry()
                    } label: {
                       Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentViewIOS()
}
