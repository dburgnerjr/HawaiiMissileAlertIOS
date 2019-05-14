//
//  AlertsScreen.swift
//  HawaiiMissileAlert
//
//  Created by Daniel Burgner on 1/24/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit
import GoogleMobileAds


class AlertsScreen : UIViewController, GADBannerViewDelegate {
    
    @IBOutlet weak var btnAmberAlertKauai: UIButton!
    @IBOutlet weak var btnAmberAlertState: UIButton!
    @IBOutlet weak var btnPACOMState: UIButton!
    @IBOutlet weak var btnVolcanicActivity: UIButton!
    @IBOutlet weak var btnBMDFalseAlarm: UIButton!
    @IBOutlet weak var bannerView: GADBannerView!

    var testMessageController: UIAlertController!
    var confirmationMessageController: UIAlertController!
    var authorizationMessageController: UIAlertController!
    
    let strAmberAlertKauai = "Amber Alert!  Missing child reported in Kauai County.  License Plate ABC 123."
    let strAmberAlertState = "Amber Alert!  Missing child reported could be anywhere in state.  License Plate ABC 123."
    let strPACOMState = "Missile Alert!  Missiles inbound, seek shelter immediately."
    let strVolcanicAlert = "Volcanic eruption reported in Hawaii County. Please proceed with evacuation of the immediate area."
    let strBMDFalseAlarm = "The Missile Alert was a false alarm."

    override func viewDidLoad() {
        super.viewDidLoad()
        btnBMDFalseAlarm.isHidden = true
        
        bannerView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        bannerView.adUnitID = "ca-app-pub-8379108590476103/5890272468"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }

    @IBAction func btnAmberAlertKauai(_ sender: Any) {
        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: { action in self.actionAmberAlertKauai()
        }))
        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertActionStyle.default, handler: nil))
        present(confirmationMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnAmberAlertState(_ sender: Any) {
        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: { action in self.actionAmberAlertState()
        }))
        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertActionStyle.default, handler: nil))
        present(confirmationMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnPACOMAlert(_ sender: Any) {
        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: { action in self.actionPACOMAlert()
        }))
        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertActionStyle.default, handler: nil))
        present(confirmationMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnVolcanicActivity(_ sender: Any) {
        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: { action in self.actionVolcanicActivity()
        }))
        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertActionStyle.default, handler: nil))
        present(confirmationMessageController, animated: true, completion: nil)
    }
    
    @IBAction func btnBMDFalseAlarm(_ sender: Any) {
        confirmationMessageController = UIAlertController(title: "Confirmation", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        confirmationMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: { action in self.actionBMDFalseAlarm()
        }))
        confirmationMessageController.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertActionStyle.default, handler: nil))
        present(confirmationMessageController, animated: true, completion: nil)
    }
    
    func actionAmberAlertKauai() {
        testMessageController = UIAlertController(title: "Amber Alert - Kauai County", message: strAmberAlertKauai, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }

    func actionAmberAlertState() {
        testMessageController = UIAlertController(title: "Amber Alert - Statewide", message: strAmberAlertState, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }

    func actionPACOMAlert() {
        testMessageController = UIAlertController(title: "MISSILE ALERT", message: strPACOMState, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
        btnBMDFalseAlarm.isHidden = false
    }
    func actionVolcanicActivity() {
        testMessageController = UIAlertController(title: "VOLCANIC ACTIVITY", message: strVolcanicAlert, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
    }

    func actionBMDFalseAlarm() {
        testMessageController = UIAlertController(title: "BMD FALSE ALARM", message: strBMDFalseAlarm, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
        btnBMDFalseAlarm.isHidden = true
    }
    
    // AdMob banner available
    func adViewDidReceiveAd(_ view: GADBannerView) {
        bannerView.isHidden = false
    }
    
    // NO AdMob banner available
    func adView(_ view: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        bannerView.isHidden = true
    }

}
