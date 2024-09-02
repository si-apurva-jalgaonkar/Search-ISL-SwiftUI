//
//  TabBarButtonView.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 15/07/24.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        
        GeometryReader { geo in
            
            
            
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color.white)
                
                Text(buttonText)
                    .font(.custom(.localizedName(of: .nextstep), size: 12))
                    .foregroundStyle(Color.white)
                if isActive {
                    Rectangle()
                        .foregroundStyle(Color.red)
                        .frame(width: geo.size.width, height: 4)
                        .padding(.leading, geo.size.width/10 )
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .background(Color.blue)
        }
    }
}

#Preview {
    TabBarButton(buttonText: "Videos Listing", imageName: "video.fill", isActive: true)
}
