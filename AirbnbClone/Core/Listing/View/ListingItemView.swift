//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/26/23.
//

import SwiftUI

// ADD THIS TO THE EXPLORE VIEW WHEN COMPLETED

struct ListingItemView: View {
    
    let listing: Listing
    var body: some View {
        VStack(spacing: 8){
//            Images
//            this add scroll to the images
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
//            Listing Details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")

                    }
                    .foregroundStyle(.black)
                }
                
//                Move everything to the left
                Spacer()
                
//                rating
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
