//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/26/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
//        NavStack If we click on an item want to have the ability to navaigate to another screen
        NavigationStack{
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
//                We want a scrollable list add a scrollview
                         ScrollView{
             //                Vertical stack list of item. we only want to render screen as they appear we dont want to render everything all at once
                             SearchAndFilterBarView(location: $viewModel.searchLocation)
                                 .onTapGesture {
                                     withAnimation(.snappy){
                                         showDestinationSearchView.toggle()
                                     }
                                 }
                             LazyVStack(spacing: 32){
                                 ForEach(viewModel.listings) {listing in
             //                        add the listingView file here
             //                        apple is removing .cornerradius so we have to use .clipshape then roundedrecatangle
                                     //naviagation link is simailar a href tag
                                     NavigationLink(value: listing){
                                         ListingItemView(listing: listing)
                                             .frame(height: 400)
                                             .clipShape(RoundedRectangle(cornerRadius: 10))
                                     }
                                                        
                                     
                                 }
                             }
                         }
                         .navigationDestination(for: Listing.self) { listing in ListingDetailView(listing: listing)
                                 .navigationBarBackButtonHidden()
            }

            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
