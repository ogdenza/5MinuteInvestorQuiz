//
//  SplashScreenViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 12/1/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    
    @IBOutlet weak var labelToTap: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "lGradient")!)
        
        pulseTapLabel()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func pulseTapLabel() {
        
        labelToTap.alpha = 0.0
        // shrink our image by 60 pixels
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {self.labelToTap.alpha = 1})
        

    }
    
    
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {

         performSegue(withIdentifier: "ShowTableView", sender: nil)

//        let viewController = ViewController()
//        let navigationController = UINavigationController(rootViewController: viewController)
//        navigationController.modalPresentationStyle = .fullScreen
//        present(navigationController, animated: true)

    }
    
}
