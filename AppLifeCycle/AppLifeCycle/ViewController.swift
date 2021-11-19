//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Reece Olsen on 10/5/21.
//

import UIKit




class ViewController: UIViewController {
    
    var sceneWillConnectToCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    func updateView() {
        didFinishLaunchingLabel.text = "launchCount: \(appDelegate.launchCount)"
        configurationForConnectingLabel.text = "configurationForConnecting Count: \(appDelegate.configurationForConnectingCount)"
        sceneWillConnectToLabel.text = "sceneWillConnectCount: \(sceneWillConnectToCount)"
        sceneDidBecomeActiveLabel.text = "sceneDidBecomeActiveCount: \(sceneDidBecomeActiveCount)"
        sceneWillResignActive.text = "sceneWillResignActiveCount: \(sceneWillResignActiveCount)"
        sceneWillEnterForegroundLabel.text = "sceneWillEnterForegroundCount:\(sceneWillEnterForegroundCount)"
        sceneDidEnterBackgroundLabel.text = "sceneDidEnterBackgroundCount:\(sceneDidEnterBackgroundCount)"
    }
//  REFERENCE:
//  application(_:didFinishLaunchingWithOptions:)
//  application(_:configurationForConnecting:options:)
//  scene(_:willConnectTo:options:)
//  sceneDidBecomeActive(_:)
//  sceneWillResignActive(_:)
//  sceneWillEnterForeground(_:)
//  sceneDidEnterBackground(_:)

    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    
    @IBOutlet weak var sceneWillConnectToLabel: UILabel!
    
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var sceneWillResignActive: UILabel!
    
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
}


