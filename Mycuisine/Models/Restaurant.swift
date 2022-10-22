//
//  Restaurant.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 21/10/2022.
//

import Foundation


struct Restaurant: Hashable, Codable {
    let name: String
    let street: String
    let city: String
    let county: String
    let country_code: String
    let lon: Float
    let lat: Float
}
