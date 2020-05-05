//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Артём Харичев on 05.05.2020.
//  Copyright © 2020 Artem Kharichev. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    
    static let placesNames = ["Dead sea", "Masada", "Kesaria", "Petra" , "Old City" ]
    
    static func  getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in placesNames {
            places.append(Place(name: place, location: "Israel", type: "Sights", image: place))
        }
        
        return places
    }
    
}
