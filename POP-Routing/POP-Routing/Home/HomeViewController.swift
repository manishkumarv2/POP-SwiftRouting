//
//  HomeViewController.swift
//  POP-Routing
//
//  Created by Manish Kumar on 2/7/18.
//  Copyright © 2018 v2solutions. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
    
    @IBAction func toChangepassword(_ sender: UIButton) {
        show(storyboard: .changePassword)
    }
}


