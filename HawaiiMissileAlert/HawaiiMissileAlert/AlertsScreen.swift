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
    @IBOutlet weak var btnBMDFalseAlarm: UIButton!

    var testMessageController: UIAlertController!
    var confirmationMessageController: UIAlertController!
    var authorizationMessageController: UIAlertController!
    
    let strAmberAlertKauai = "Amber Alert!  Missing child reported in Kauai County.  License Plate ABC 123."
    let strAmberAlertState = "Amber Alert!  Missing child reported could be anywhere in state.  License Plate ABC 123."
    let strPACOMState = "Missile Alert!  Missiles inbound, seek shelter immediately."
    let strBMDFalseAlarm = "The Missile Alert was a false alarm."

    override func viewDidLoad() {
        super.viewDidLoad()
        btnBMDFalseAlarm.isHidden = true
    }
    
    
    @IBAction func btnAmberAlertKauai(_ sender: Any) {
//        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
//        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
//            UIAlertActionStyle.default, handler: nil))
//        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
//            UIAlertActionStyle.default, handler: nil))
//        present(confirmationMessageController, animated: true, completion: nil)
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
        btnBMDFalseAlarm.isHidden = false
    }
    
    @IBAction func btnBMDFalseAlarm(_ sender: Any) {
        testMessageController = UIAlertController(title: "BMD FALSE ALARM", message: strBMDFalseAlarm, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
        btnBMDFalseAlarm.isHidden = true
    }
}
