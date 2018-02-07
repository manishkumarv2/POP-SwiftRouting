//
//  UIViewController.swift
//  POP-Routing
//
//  Created by Manish Kumar on 2/7/18.
//  Copyright © 2018 v2solutions. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: Routing {
    
    public enum StoryboardIdentifier: String {
        case home = "Home"
        case changePassword = "ChangePassword"
    }
}
