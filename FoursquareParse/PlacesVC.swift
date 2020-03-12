//
//  PlacesVC.swift
//  FoursquareParse
//
//  Created by Rusen Topcu on 12.03.2020.
//  Copyright © 2020 Rusen Topcu. All rights reserved.
//

import UIKit

class PlacesVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
    }
    
    @objc func addButtonClicked() {
        
    }

}
