//
//  ClubInnerPage.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 16/07/24.
//

import SwiftUI

struct ClubInnerPage: View {
    
    @State private var selectedFilter: Int = 0
    @Binding var isMoreExpanded: Bool
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<4) { id in
                    ClubFilter(index: id, isSelected: selectedFilter == id, selectedFilter: $selectedFilter)

                    if ((id + 1) != 0) {
                        Image("tabLine")
                    }
                }
//                Image("tabLine")
                Button(action: {
                    withAnimation(.easeInOut) {
                        isMoreExpanded.toggle()
                        selectedFilter = -1 // -1 indicates the "More" button is selected
                    }
                }) {
                    HStack {
                        Text("More")
                            .foregroundColor(selectedFilter == -1 ? Color.white : Color.black)
                        
                        if selectedFilter == -1 {
                            Image("whiteDropDown")
                                .rotationEffect(.degrees(isMoreExpanded ? -180 : 0))
                        } else {
                            Image("dropDown")
                                .rotationEffect(.degrees(isMoreExpanded ? -180 : 0))
                        }
                            
                    
//                        Image("dropDown")
//                            .foregroundColor(selectedFilter == -1 ? Color.white : Color.blue)
//                            .rotationEffect(.degrees(isMoreExpanded ? -180 : 0))
                    }
                    .frame(width: 100, height: 40)
                    .background(selectedFilter == -1 ? Color.blue : Color.clear)
                }
            }
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

struct ClubFilter: View {
    var index: Int
    var isSelected: Bool
    @Binding var selectedFilter: Int
    
    var body: some View {
        Button(action: {
            withAnimation {
                selectedFilter = index
            }
        }) {
            Text("All")
                .foregroundColor(isSelected ? Color.white : Color.black)
                .frame(width: 101, height: 40)
                .background(isSelected ? Color.blue : Color.clear)
        }
    }
}

#Preview {
    ClubInnerPage(isMoreExpanded: .constant(false))
}
