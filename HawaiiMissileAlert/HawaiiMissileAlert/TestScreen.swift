//
//  TestScreen.swift
//  HawaiiMissileAlert
//
//  Created by Daniel Burgner on 1/24/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit

class TestScreen: UIViewController {

    @IBOutlet weak var btnTestMessage: UIButton!
    @IBOutlet weak var btnDrillPACOM: UIButton!
    @IBOutlet weak var btnAmberAlertDemo: UIButton!
    
    let strTestMessage = "This is a test of the Hawaii Emergency Alert System.  This is only a test."
    let strDrillPACOM = "This is a drill.  Missile Alert!  Missiles inbound, seek shelter immediately."
    let strAmberAlert = "This is a drill.  Amber Alert!  Missing Child in Maui County, License Plate ABC 123."

    var testMessageController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnTestMessage(_ sender: Any) {
        testMessageController = UIAlertController(title: "Test Message", message: strTestMessage, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnDrillPACOM(_ sender: Any) {
        testMessageController = UIAlertController(title: "Drill - Missile Alert", message: strDrillPACOM, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnAmberAlertDemo(_ sender: Any) {
        testMessageController = UIAlertController(title: "Drill - Amber Alert", message: strAmberAlert, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }
}
