//
//  ViewController.swift
//  BuildConfiDemo2
//
//  Created by Shantaram Kokate on 1/23/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit
var baseURL = ""
var googley = ""

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        #if DemoDebug
        baseURL = "DemoDebug"
        #elseif DemoRelease
        baseURL = "DemoRelease"
        #elseif DevelopmentDebug
        baseURL = "DevelopmentDebug"
        #elseif DevelopmentRelease
        baseURL = "DevelopmentRelase"
        #endif
        
        let bundleID = Bundle.main.bundleIdentifier
        print(bundleID ?? "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

