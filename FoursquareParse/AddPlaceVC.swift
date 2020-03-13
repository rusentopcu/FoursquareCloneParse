//
//  AddPlaceVC.swift
//  FoursquareParse
//
//  Created by Rusen Topcu on 13.03.2020.
//  Copyright © 2020 Rusen Topcu. All rights reserved.
//

import UIKit

class AddPlaceVC: UIViewController {
    
    
    @IBOutlet weak var placeNameText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var placeAtmosphereText: UITextField!
    @IBOutlet weak var placeImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toMapVC", sender: nil)
        
    }
    
}
