//
//  TestScreen.swift
//  HawaiiMissileAlert
//
//  Created by Daniel Burgner on 1/24/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TestScreen: UIViewController, GADBannerViewDelegate {

    @IBOutlet weak var btnTestMessage: UIButton!
    @IBOutlet weak var btnDrillPACOM: UIButton!
    @IBOutlet weak var btnAmberAlertDemo: UIButton!
    @IBOutlet weak var btnVolcanicActivityTest: UIButton!
    @IBOutlet weak var bannerView: GADBannerView!
    
    let strTestMessage = "This is a test of the Hawaii Emergency Alert System.  This is only a test."
    let strDrillPACOM = "This is a drill.  Missile Alert!  Missiles inbound, seek shelter immediately."
    let strAmberAlert = "This is a drill.  Amber Alert!  Missing Child in Maui County, License Plate ABC 123."
    let strVolcanicAlert = "This is a drill.  Volcanic eruption reported in Hawaii County. Please proceed with evacuation of the immediate area."

    var testMessageController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.delegate = self
    }

    
    override func viewWillAppear(_ animated: Bool) {
        bannerView.adUnitID = "ca-app-pub-8379108590476103/5890272468"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
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
    
    @IBAction func btnVolcanicActivityTest(_ sender: Any) {
        testMessageController = UIAlertController(title: "Drill - Volcanic Activity", message: strVolcanicAlert, preferredStyle: UIAlertControllerStyle.alert)
        testMessageController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(testMessageController, animated: true, completion: nil)
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
