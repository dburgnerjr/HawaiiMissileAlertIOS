//
//  WarningsScreen.swift
//  HawaiiMissileAlert
//
//  Created by Daniel Burgner on 1/24/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit

class WarningsScreen : UIViewController {
    
    @IBOutlet weak var btnTsunamiWarning: UIButton!
    @IBOutlet weak var btnHighSurfWarning: UIButton!
    @IBOutlet weak var btnLandslideHanaRd: UIButton!
    
    let strTsunamiWarning = "Tsunami inbound, seek shelter immediately."
    let strHighSurfWarning = "High surf warning in effect, all beaches affected are closed until further notice."
    let strLandslideHanaRd = "Landslide reported on Hana Road.  Hana Road is closed until further notice"
    
    var testMessageController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnTsunamiWarning(_ sender: Any) {
        testMessageController = UIAlertController(title: "Tsunami Warning", message: strTsunamiWarning, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnHighSurfWarning(_ sender: Any) {
        testMessageController = UIAlertController(title: "High Surf Warning", message: strHighSurfWarning, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnLandslideHanaRd(_ sender: Any) {
        testMessageController = UIAlertController(title: "Landslide - Hana Road", message: strLandslideHanaRd, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
}
