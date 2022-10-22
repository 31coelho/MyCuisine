//
//  ApiUnformatted.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 22/10/2022.
//

import Foundation

struct ApiUnformatted: Hashable, Codable {
    let type: String
    let features: [ApiFeatures]
}


struct ApiFeatures: Hashable, Codable {
    let type: String
    let properties: ApiProperties
    let geometry: ApiGeometry
    
}

struct ApiGeometry: Hashable, Codable {
    let type: String
    let coordinates: [Float]
}

struct ApiProperties: Hashable, Codable {
    let name: String
    let street: String
    let suburb: String
    let city: String
    let county: String
    let country_code: String
    let lon: Float
    let lat: Float
    let formatted: String
    let address_line1: String
    let address_line2: String
    let categories: [String]
    let details: [String]
    let place_id: String
}
