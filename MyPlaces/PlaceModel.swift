//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Артём Харичев on 05.05.2020.
//  Copyright © 2020 Artem Kharichev. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?

    
    
    let placesNames = ["Dead sea", "Masada", "Kesaria", "Petra" , "Old City" ]
    
    func  savePlaces() {
        
        for place in placesNames {
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Israel"
            newPlace.type = "Sea"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace )
            
        }
    }
}
