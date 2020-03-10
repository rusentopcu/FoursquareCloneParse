//
//  ViewController.swift
//  FoursquareParse
//
//  Created by Rusen Topcu on 10.03.2020.
//  Copyright © 2020 Rusen Topcu. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Veri Kaydetmek
        /*
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Banana"
        parseObject["calories"] = 150
        parseObject.saveInBackground { (success, error) in
            if error != nil {
                print(error?.localizedDescription)
            }
            else {
                print("uploaded")
            }
        }
        */
        
        //MARK: - Veri Çekmek
        let query = PFQuery(className: "Fruits")
        //query.whereKey("name", equalTo: "Apple")
        //query.whereKey("calories", greaterThan: 120)
        query.findObjectsInBackground { (objects, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print(objects)
            }
        }
    }


}

