//
//  ContentView.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var restaurantsViewModel = RestaurantsViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Explore", systemImage: "house.fill")
                }
            FavoritesView()
                .tabItem {
                    Label("My Favorites", systemImage: "star.fill")
                }
        }.onAppear{
            restaurantsViewModel.fetch()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
