//
//  NodataFound.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 15/07/24.
//

import SwiftUI

struct NodataFound: View {
    
    @State private var searchText = ""
    @State var selectedTabs: Tabs = .videosListing
    var namesData: [NamesData]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults) { nameData in
                        Text(nameData.name)
                        .searchCompletion(nameData.name)
                        .foregroundColor(Color.black)
 
                }
                FilterTab()
            }
            .navigationTitle("ISL")
        }
        .searchable(text: $searchText)
       
        VStack(alignment: .leading){
            Text("No Data Found")
                .foregroundStyle(Color.red)
                .multilineTextAlignment(.leading)
                .font(.callout).bold()
            
            Image("horizontalSeperator")
        }
        
        VStack{
         
            Image("noDataFound")
                .resizable()
                .frame(width: 200, height: 200)
        }
        .padding(.all, 100)
        
     
        CustomTabBar(selectedTabs: $selectedTabs)
            .cornerRadius(10)
    }
    
    var searchResults: [NamesData] {
//        if searchText.isEmpty {
//            return namesData
//        } else {
//            return namesData.filter { $0.name.contains(searchText) }
//        }
        
        guard !searchText.isEmpty else { return []}
        return namesData.filter { $0.name.contains(searchText) }
    }
}

#Preview {
    NodataFound(namesData: nameData)
}
