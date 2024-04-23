//
//  ViewController.swift
//  DAPI Actividad 9.2
//
//  Created by Alumno on 22/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinish: UILabel!
    @IBOutlet weak var configConnect: UILabel!
    @IBOutlet weak var willConnect: UILabel!
    var willConnectCount = 0
    @IBOutlet weak var didBecomeActive: UILabel!
    var didBecomeActiveCount = 0
    @IBOutlet weak var willResignActive: UILabel!
    var willResignActiveCount = 0
    @IBOutlet weak var willEnterFore: UILabel!
    var willEnterForeCount = 0
    @IBOutlet weak var didEnterBack: UILabel!
    var didEnterBackCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinish.text = "DidFinish: \(appDelegate.launchCount)"
        
        configConnect.text = "ConfigConnection: \(appDelegate.configurationForConnectingCount)"
        
        willConnect.text = "WillConnect: \(willConnectCount)"
        
        didBecomeActive.text = "DidBecomeActive: \(didBecomeActiveCount)"
        
        willResignActive.text = "WillResignActive: \(willResignActiveCount)"
        
        willEnterFore.text = "WillEnterForeground: \(willEnterForeCount)"
        
        didEnterBack.text = "DidEnterBackground: \(didEnterBackCount)"
    }


}

