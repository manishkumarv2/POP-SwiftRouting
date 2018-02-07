//
//  LoginViewController.swift
//  POP-Routing
//
//  Created by Manish Kumar on 2/6/18.
//  Copyright © 2018 v2solutions. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
    
    @IBAction func loginTouch(_ sender: UIButton) {
        show(storyboard: .home)
    }
}


