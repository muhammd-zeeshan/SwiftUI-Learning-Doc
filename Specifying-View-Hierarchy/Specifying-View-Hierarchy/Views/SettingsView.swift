//
//  SettingsView.swift
//  Specifying-View-Hierarchy
//
//  Created by IOS-Developer on 31/07/2025.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        #if os(macOS)
        SettingsInTabView()
        #else
        SettingsInNavigationStack()
        #endif
    }
    
    
    private enum Settingd: String, CaseIterable {
        case account = "Account"
        case sync = "Sync"
        case general = "General"
        case appIcon = "App Icon"
        
        var image: String {
            switch self {
            case .account:
                return "person.crop.circle"
            case .sync:
                return "cloud"
            case .general:
                return "gear"
            case .appIcon:
                return "app"
            }
        }
    }
    
    
    private func SettingsInNavigationStack() -> some View {
        NavigationStack {
            List {
                NavigationLink {
                    SettingsDetailsView(title: Settingd.account.rawValue)
                } label: {
                    Label(Settingd.account.rawValue, systemImage: Settingd.account.image)
                }
 
                NavigationLink {
                    SettingsDetailsView(title: Settingd.sync.rawValue)
                } label: {
                    Label(Settingd.sync.rawValue, systemImage: Settingd.sync.image)
                }
                
                Section {
                    NavigationLink {
                        SettingsDetailsView(title: Settingd.general.rawValue)
                    } label: {
                        Label(Settingd.general.rawValue, systemImage: Settingd.general.image)
                    }
     
                    NavigationLink {
                        SettingsDetailsView(title: Settingd.appIcon.rawValue)
                    } label: {
                        Label(Settingd.appIcon.rawValue, systemImage: Settingd.appIcon.image)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    private func SettingsInTabView() -> some View {
        TabView {
            ForEach(Settingd.allCases, id: \.self) { item in
                SettingsDetailsView(title: item.rawValue)
                    .tabItem {
                        Label(item.rawValue, systemImage: item.image)
                    }
                    .tag(item)
            }
        }
        .frame(width: 375, height: 150)
    }
}

#Preview {
    SettingsView()
}
