//
//  CustomTabBar.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 15/07/24.
//

import SwiftUI

enum Tabs: Int {
    case videosListing = 0
    case clubListing = 1
    case newsListing = 2
    case newsDetail = 3
}

struct CustomTabBar: View {
    
    @Binding var selectedTabs: Tabs
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                selectedTabs = .videosListing
            }, label: {
                TabBarButton(
                    buttonText: "Videos Listing",
                    imageName: "video",
                    isActive: selectedTabs == .videosListing)
            })
            
            Button(action: {
                selectedTabs = .clubListing
            }, label: {
                TabBarButton(
                    buttonText: "Club Listing",
                    imageName: "video.fill",
                    isActive: selectedTabs == .clubListing)
            })
            
            Button(action: {
                selectedTabs = .newsListing
            }, label: {
                TabBarButton(
                    buttonText: "News Listing",
                    imageName: "newspaper",
                    isActive: selectedTabs == .newsListing)
            })
            
            Button(action: {
                selectedTabs = .newsDetail
            }, label: {
                TabBarButton(
                    buttonText: "News Details",
                    imageName: "newspaper.fill",
                    isActive: selectedTabs == .newsDetail)
            })
        }
        .frame(height: 82)
        .background(Color.blue)
    }
}

#Preview {
    CustomTabBar(selectedTabs: .constant(.videosListing))
}
