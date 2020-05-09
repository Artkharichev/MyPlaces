//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Артём Харичев on 09.05.2020.
//  Copyright © 2020 Artem Kharichev. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
