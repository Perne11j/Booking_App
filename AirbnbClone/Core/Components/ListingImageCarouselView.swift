//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/26/23.

//always use a compoents folder for a set of reusable views we can use across the app
//

import SwiftUI

struct ListingImageCarouselView: View {

    let listing: Listing
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self) {
                image in
                Image(image)
                    .resizable()
                    .scaledToFill()

            }
        }
//        .frame(height: 320)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
        .tabViewStyle(.page)
       
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
