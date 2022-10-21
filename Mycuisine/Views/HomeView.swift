//
//  HomeView.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 21/10/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "location.circle.fill").foregroundColor(.gray).padding(10)
                TextField("Search by name or location", text: $username)
                
            }.overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#989898"), lineWidth: 0.8)
            )
            Spacer(minLength: 30)
            VStack(alignment: .leading) {
                Text("Daily Sugestions").font(.system(size: 20))
                ScrollView(.horizontal){
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
            }
            
            VStack(alignment: .leading) {
                Text("My Favorites").font(.system(size: 20))
                ScrollView(.horizontal){
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
            }
            Spacer()
            
        }.padding()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
