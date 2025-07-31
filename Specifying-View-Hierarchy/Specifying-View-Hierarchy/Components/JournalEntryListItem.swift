//
//  JournalEntryListItem.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI

struct JournalEntryListItem: View {
    let journalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: journalEntry.createdDate)
            Text("\(journalEntry.text)")
                .lineLimit(2)
        }
    }
}

