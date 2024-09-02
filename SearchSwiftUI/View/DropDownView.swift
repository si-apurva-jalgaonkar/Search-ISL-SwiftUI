//
//  DropDownView.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 16/07/24.
//

import SwiftUI

struct DropDownView: View {

    let promptText: String
    let options: [String]
    
    @Binding var isExpanded: Bool
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(alignment: .leading) {

            if isExpanded {
                VStack {
                    ForEach(options, id: \.self) { option in
                        VStack {
                            HStack {
                                Text(option)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            Image("horizontalSeperator")
                        }
                        .frame(height: 40)
                        .padding(.horizontal)
                        .background(scheme == .dark ? Color.black : Color.white)
                        .onTapGesture {
                            withAnimation(.bouncy) {
                                isExpanded.toggle()
                            }
                        }
                    }
                }
                .transition(.move(edge: .bottom))
                .frame(width: 375)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 0))
                .shadow(radius: 4)
                .zIndex(1)
            }
        }
    }
}

#Preview {
    DropDownView(promptText: "More",
                 options: [
                    "News",
                    "Videos",
                    "Features",
                    "Interviews"
                 ],
                 isExpanded: .constant(false))
}
