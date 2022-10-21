//
//  ContentView.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            VStack {
                
                HStack {
                    Image(systemName: "location.circle.fill").foregroundColor(.gray).padding(10)
                    TextField("Search by name or location", text: $username)
                        
                }.overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(hex: "#989898"), lineWidth: 0.8)
                )
               
                HStack {
                    Rectangle().foregroundColor(.pink)
                    Rectangle().foregroundColor(.blue)
                    Rectangle().foregroundColor(.red)
                }
                HStack {
                    Rectangle().foregroundColor(.pink)
                    Rectangle().foregroundColor(.blue)
                    Rectangle().foregroundColor(.red)
                }
            }.padding()
            Rectangle().foregroundColor(.green)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
