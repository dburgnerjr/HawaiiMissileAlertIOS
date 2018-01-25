//
//  AlertsScreen.swift
//  HawaiiMissileAlert
//
//  Created by Daniel Burgner on 1/24/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit

class AlertsScreen : UIViewController {
    
    @IBOutlet weak var btnAmberAlertKauai: UIButton!
    @IBOutlet weak var btnAmberAlertState: UIButton!
    @IBOutlet weak var btnPACOMState: UIButton!
    
    let strAmberAlertKauai = "Amber Alert!  Missing child reported in Kauai County.  License Plate ABC 123."
    let strAmberAlertState = "Amber Alert!  Missing child reported could be anywhere in state.  License Plate ABC 123."
    let strPACOMState = "Missile Alert!  Missiles inbound, seek shelter immediately."
    
    var testMessageController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAmberAlertKauai(_ sender: Any) {
        testMessageController = UIAlertController(title: "Amber Alert - Kauai County", message: strAmberAlertKauai, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnAmberAlertState(_ sender: Any) {
        testMessageController = UIAlertController(title: "Amber Alert - Statewide", message: strAmberAlertState, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnPACOMAlert(_ sender: Any) {
        testMessageController = UIAlertController(title: "MISSILE ALERT", message: strPACOMState, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
}
