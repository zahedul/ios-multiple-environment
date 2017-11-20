//
//  ViewController.swift
//  myConfigApp
//
//  Created by Zahedul Alam on 11/20/17.
//  Copyright © 2017 Zahedul Alam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var configuration = Configuration()
        
        print(configuration.environment.baseURL)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

