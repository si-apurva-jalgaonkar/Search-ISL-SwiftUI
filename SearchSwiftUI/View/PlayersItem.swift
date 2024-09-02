//
//  PlayersItem.swift
//  SearchSwiftUI
//
//  Created by Apurva Jalgaonkar on 16/07/24.
//

import SwiftUI

struct PlayersItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Image("playerImage")
                .overlay(alignment: .leading){
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Matches Played")
                            .textCase(.uppercase)
                            .font(.footnote)
                            .font(.system(size: 10))
                        
                        Text("19")
                            .bold()
                        Spacer()
                        
                        Text("Clean Sheets")
                            .textCase(.uppercase)
                            .font(.footnote)
                            .font(.system(size: 10))
                        Text("723")
                            .bold()
                        Spacer()
                        
                        Text("Saves")
                            .textCase(.uppercase)
                            .font(.footnote)
                            .font(.system(size: 10))
                        Text("2")
                            .bold()
                        Spacer()
                    }
                    .frame(width: 77, height: 215)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black))
                    }
                .padding()

            VStack(alignment: .leading) {
                
                HStack{
                    Text("Dheeraj").textCase(.uppercase)
                    Text("Moirangthem").textCase(.uppercase)
                        .bold()
                }
                
                Text("Goalkeeper")
                    .textCase(.uppercase)
                    .padding(.all,5)
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .cornerRadius(5)
            }
            .padding(.horizontal)
            .padding(.bottom)
            .cornerRadius(5)
            
        }
        .border(Color.black)
        
    }
}

#Preview {
    PlayersItem()
}
