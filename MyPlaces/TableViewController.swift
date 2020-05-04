//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Артём Харичев on 04.05.2020.
//  Copyright © 2020 Artem Kharichev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let placesNames = ["Dead sea", "Masada", "Kesaria", "Petra" , "Old City" ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = placesNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: placesNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }
    
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

}
