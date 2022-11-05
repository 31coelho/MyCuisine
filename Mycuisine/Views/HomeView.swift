//
//  HomeView.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 21/10/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var username: String = ""
    @State private var searchVisibility: Bool = false
    @StateObject private var viewModel: RestaurantsViewModel = RestaurantsViewModel()
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "location.circle.fill").foregroundColor(.gray).padding(10)
                TextField("Search by name or location", text: $username).onChange(of: username) { _ in
                    if(username != ""){
                        searchVisibility = true
                    } else {
                        searchVisibility = false
                    }
                }
                
                if searchVisibility {
                    Button(action: {
                        print("hello")
                    }) {
                        Text("Search")
                    }.padding(.trailing)
                }
            }.overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#989898"), lineWidth: 0.8)
            )
            .padding(.bottom)
            
            
            VStack(alignment: .leading) {
                Text("Daily Sugestions").font(.system(size: 20))
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20) {
                        ForEach(viewModel.restaurants, id: \.self) { restaurant in
                            MiniRestaurantView(name: restaurant.name)
                        }
                    }
                }
            }.padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("My Favorites").font(.system(size: 20))
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20) {
                        ForEach(0..<10) {
                            Text("Item \($0)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .frame(width: 150, height: 150)
                                .background(.red)
                                .cornerRadius(16)
                        }
                    }
                }
            }.padding(.bottom)
            Spacer()
            
        }
        .padding()
        .onAppear {
            viewModel.fetch()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
