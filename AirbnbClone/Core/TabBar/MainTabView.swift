//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Pernell Jones on 10/27/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistsView()
                .tabItem { Label("Wishlist", systemImage: "heart.fill") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.crop.circle") }
        }
    }
}

#Preview {
    MainTabView()
}
