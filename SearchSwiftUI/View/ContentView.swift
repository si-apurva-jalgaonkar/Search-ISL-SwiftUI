//
//  ContentView.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 11/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    @State var selectedTabs: Tabs = .videosListing
    @State private var isMoreExpanded = false 
    var namesData: [NamesData]
    
    let moreFilters = [
        "News",
        "Videos",
        "Features",
        "Interviews",
        "Photos"
    ]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                List {
                    ForEach(searchResults) { nameData in
                        Text(nameData.name)
                            .searchCompletion(nameData.name)
                            .foregroundColor(Color.black)
                    }
                    
                    VStack {
                        ClubInnerPage(isMoreExpanded: $isMoreExpanded)
//                            .background(Color.gray)
                        
                        ForEach(0..<4) { player in
                            PlayersItem()
                        }
                    }
                    
                }
                .listStyle(.inset)
                .navigationTitle("ISL")
                
                
                if isMoreExpanded {
                    DropDownView(promptText: "More", options: moreFilters, isExpanded: $isMoreExpanded)
                        .offset(y: 95)
                }
                    
            }
            .searchable(text: $searchText)
            .scrollIndicators(.hidden)
        }
        
        CustomTabBar(selectedTabs: $selectedTabs)
            .cornerRadius(10)
    }
    
    var searchResults: [NamesData] {
        guard !searchText.isEmpty else { return [] }
        return namesData.filter { $0.name.contains(searchText) }
    }
}

#Preview {
    ContentView(namesData: nameData)
}
