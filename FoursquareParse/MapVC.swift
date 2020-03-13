//
//  MapVC.swift
//  FoursquareParse
//
//  Created by Rusen Topcu on 13.03.2020.
//  Copyright © 2020 Rusen Topcu. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
        
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: ">Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked))
        
    }
    
    
    @objc func saveButtonClicked() {
        
    }
    
    @objc func backButtonClicked() {
        
        //navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
