//
//  UIStoryboard.swift
//  POP-Routing
//
//  Created by Manish Kumar on 2/7/18.
//  Copyright © 2018 v2solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UIStoryboard {
    convenience init(name: String) {
        self.init(name: name, bundle: nil)
    }
}
