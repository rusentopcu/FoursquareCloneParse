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

    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
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
        /*
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
        */
        
        
    }
    
    @objc func makeAlert(title:String, mesaj: String) {
        
        let alert = UIAlertController(title: title, message: mesaj,preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { (user, error) in
                if error != nil {
                    self.makeAlert(title: "Error", mesaj: error?.localizedDescription ?? "Error!")
                }
                else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
            
        } else {
            makeAlert(title: "Error", mesaj: "Username/Password?")
        }
        
        
    }
    
    
    
    //MARK: - Parse consolda Kullanıcı Olusturma islemi icin
    @IBAction func signUpClicked(_ sender: Any) {
        
        
        if usernameText.text != "" && passwordText.text != "" {
            let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            user.signUpInBackground() { (success, error) in
                if error != nil {
                    print(error?.localizedDescription)
                }
                else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        }
        else {
            self.makeAlert(title: "Error", mesaj: "Username/Password?")
        }
    }
    

}

