//
//  ViewController.swift
//  login
//
//  Created by Susanne Burnham on 10/15/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var lockedImageView: UIImageView!
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    
        
        if PFUser.currentUser() != nil {
            view.backgroundColor = UIColor.whiteColor()
            lockedImageView.image = UIImage(named: "unlocked")
            
            // logged in
        
        } else {
            
            //not logged in
            
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            
            if let loginVC = storyboard.instantiateInitialViewController() {
            
            presentViewController(loginVC, animated: true, completion: nil)
        }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

