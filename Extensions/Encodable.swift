//
//  Encodable.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 22/10/2022.
//

import Foundation


extension Encodable {
    
    func toJSONString() -> String {
        let jsonData = try! JSONEncoder().encode(self)
        return String(data: jsonData, encoding: .utf8)!
    }
}
