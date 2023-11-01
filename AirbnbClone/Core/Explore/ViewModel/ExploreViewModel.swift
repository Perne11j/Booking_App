//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/28/23.
//

import Foundation


class ExploreViewModel: ObservableObject {
//    publish to exploreview to display listing set
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
//    to keep a copy of things
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService){
        self.service = service
        
        Task {await fetchListing() }
        
    }
    
    func fetchListing() async{
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        }catch{
            print("DEBUG: Failed to fetch listings with error \(error.localizedDescription)")
        }
        
    }
//    filter search
    func updateListingForLocation(){
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
