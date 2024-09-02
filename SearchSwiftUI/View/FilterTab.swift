//
//  FilterTab.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 15/07/24.
//

import SwiftUI

struct FilterTab: View {
    @State private var selectedFilter: Int = 0
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<6) { index in
                    Filters(index: index, isSelected: index == selectedFilter, selectedFilter: $selectedFilter)
                    Image("tabLine")
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct Filters: View {
    var index: Int
    var isSelected: Bool
    @Binding var selectedFilter: Int
    
    var body: some View {
        VStack {
            Button(action: {
                selectedFilter = index
            }) {
                Text("All")
                    .foregroundColor(.black)
                    .frame(width: 101, height: 40)
                    .background(isSelected ? Color.red : Color.clear)
            }
        }
    }
}

#Preview {
    FilterTab()
}
