//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/28/23.
//

import Foundation
// putting our mock data


class DeveloperPreview{
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
         ownerUid: NSUUID().uuidString,
         ownerName: "Kathy Smith",
         ownerImageUrl: "female-profile",
         numberOfBedroom: 4,
         numberOfBathroom: 3,
         numberOfGuests: 8,
         numberOfBeds: 5,
         pricePerNight: 824,
         latiude: 34.04238,
         longitude: -118.575602,
         imageURLs: ["listing-1","listing-2", "listing-3","listing-4"],
         address: "Wakecrest Dr",
         city: "Malibu",
         state: "California",
         title: "Modern Malibu home with Ocean View",
         rating: 4.99,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .hotTub, .parking, .waterFront, .balcony,.kitchen],
            type: .villa
         ),
        .init(
            id: NSUUID().uuidString,
         ownerUid: NSUUID().uuidString,
         ownerName: "Kathy Smith",
         ownerImageUrl: "female-profile",
         numberOfBedroom: 4,
         numberOfBathroom: 3,
         numberOfGuests: 8,
         numberOfBeds: 5,
         pricePerNight: 824,
         latiude: 34.04238,
         longitude: -118.575602,
         imageURLs: ["listing-2","listing-1", "listing-3","listing-4"],
         address: "Wakecrest Dr",
         city: "Malibu",
         state: "California",
         title: "Modern Malibu home with Ocean View",
         rating: 4.99,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .hotTub, .parking, .waterFront, .balcony,.kitchen],
            type: .villa
         ),
        .init(
            id: NSUUID().uuidString,
         ownerUid: NSUUID().uuidString,
         ownerName: "Kathy Smith",
         ownerImageUrl: "female-profile",
         numberOfBedroom: 4,
         numberOfBathroom: 3,
         numberOfGuests: 8,
         numberOfBeds: 5,
         pricePerNight: 824,
         latiude: 34.04238,
         longitude: -118.575602,
         imageURLs: ["listing-3","listing-4", "listing-1","listing-2"],
         address: "Wakecrest Dr",
         city: "Malibu",
         state: "California",
         title: "Modern Malibu home with Ocean View",
         rating: 4.99,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .hotTub, .parking, .waterFront, .balcony,.kitchen],
            type: .villa
         ),
        .init(
            id: NSUUID().uuidString,
         ownerUid: NSUUID().uuidString,
         ownerName: "Kathy Smith",
         ownerImageUrl: "female-profile",
         numberOfBedroom: 4,
         numberOfBathroom: 3,
         numberOfGuests: 8,
         numberOfBeds: 5,
         pricePerNight: 824,
         latiude: 34.04238,
         longitude: -118.575602,
         imageURLs: ["listing-4","listing-2", "listing-3","listing-1"],
         address: "Wakecrest Dr",
         city: "Malibu",
         state: "California",
         title: "Modern Malibu home with Ocean View",
         rating: 4.99,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .hotTub, .parking, .waterFront, .balcony,.kitchen],
            type: .villa
         ),
        
            .init(
                id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Kathy Smith",
             ownerImageUrl: "female-profile",
             numberOfBedroom: 4,
             numberOfBathroom: 3,
             numberOfGuests: 8,
             numberOfBeds: 5,
             pricePerNight: 824,
             latiude: 34.04238,
             longitude: -118.575602,
             imageURLs: ["listing-2","listing-4", "listing-1","listing-3"],
             address: "Wakecrest Dr",
             city: "Malibu",
             state: "California",
             title: "Modern Malibu home with Ocean View",
             rating: 4.99,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi, .hotTub, .parking, .waterFront, .balcony,.kitchen],
                type: .villa
             )
        
    ]
}
