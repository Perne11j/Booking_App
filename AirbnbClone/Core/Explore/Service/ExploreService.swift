//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/28/23.
//

import Foundation


class ExploreService {
    
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
