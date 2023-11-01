//
//  Listing.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/27/23.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedroom: Int
    let numberOfBathroom: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latiude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self{
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title:String{
        switch self{
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    
    var subtitle: String {
        switch self {
        case .selfCheckIn:
            return "Check yourself in with the keypad"
        case .superHost:
            return "Superhost are experienced, highly rated hosts whp are commited to provinding great stars for guests."
        }
    }
    
    var id: Int{return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    case hotTub
    case waterFront
    case parking
    
    var title: String{
        switch self{
        case .pool: return "Pool"
        case .kitchen:  return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        case .hotTub: return "Private hot tub"
        case .waterFront: return "Waterfront"
        case .parking: return "Free parking on premises"
        }
    }
    
    var imageName: String{
        switch self{
        case .pool: return "figure.pool.swim"
        case .kitchen:  return "fork.knife.circle"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "lock.shield"
        case .office: return "pencil.and.ruler"
        case .balcony: return "window.vertical.open"
        case .hotTub: return "bathtub"
        case .waterFront: return "water.waves"
        case .parking: return "parkingsign.circle"
        }
    }
    
//    giving each item a id to response to its raw int value
    var id: Int{return self.rawValue}

}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    var id: Int{return self.rawValue}

}
