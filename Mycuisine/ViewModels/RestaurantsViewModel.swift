//
//  RestaurantsViewModel.swift
//  Mycuisine
//
//  Created by Tiago Coelho on 21/10/2022.
//

import Foundation

class RestaurantsViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []
    func fetch(){
        guard let url = URL(string: "https://api.geoapify.com/v2/places?categories=catering.restaurant&filter=place:512ce77424b23d21c059157edac1b6944440f00101f901a575330000000000c00208920305506f72746f&limit=20&apiKey=cbd9b957e85e49eeae719c0fd9d43d7d") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let str = String(decoding: data, as: UTF8.self)
                let d = str.data(using: .utf8)!
                
                do {
                    if let jsonArray = try JSONSerialization.jsonObject(with: d, options : .allowFragments) as? Dictionary<String,Any>
                    {
                       print(jsonArray) // use the json here
                        
                    } else {
                        print("bad json")
                    }
                } catch let error as NSError {
                    print(error)
                }
                
                
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                 DispatchQueue.main.async {
                     self?.restaurants = restaurants
                 }
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
    
    

}
