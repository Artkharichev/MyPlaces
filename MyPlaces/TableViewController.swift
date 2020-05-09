//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Артём Харичев on 04.05.2020.
//  Copyright © 2020 Artem Kharichev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
  
   // var places = Place.getPlaces()

    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return places.count
//    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
//
//        let place = places[indexPath.row]
//
//        cell.nameLabel.text = place.name
//        cell.locationLabel.text = place.location
//        cell.typeLabel.text = place.type
//
//        if place.image == nil {
//           cell.imageOfPlace.image = UIImage(named: place.placeImage!)
//        } else {
//            cell.imageOfPlace.image = place.image
//        }
//
//
//
//        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
//        cell.imageOfPlace.clipsToBounds = true
//
//        return cell
//    }
    
    // MARK: - Table view delegate
     
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindSegue (_ segue: UIStoryboardSegue ) {
        guard let newPlaceVC = segue.source as? NewPlaceViewController else {return}
        newPlaceVC.saveNewPlace()
       // places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }

}
