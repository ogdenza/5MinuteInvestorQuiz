//
//  SplashScreenViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 12/1/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "ShowTableView", sender: nil)
    }
    
}
