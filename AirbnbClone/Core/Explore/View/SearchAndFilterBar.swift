//
//  SearchAndFilterBar.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/26/23.
//

import SwiftUI

struct SearchAndFilterBarView: View {
    @Binding var location: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("\(location.isEmpty ? "Anywhere - " :  "")Any Week - Add guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                //apple is removing .forgroundColor so use .forgroundStyle
                    .foregroundStyle(.black)
                    
            })
        
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBarView(location: .constant("Malibu"))
}
