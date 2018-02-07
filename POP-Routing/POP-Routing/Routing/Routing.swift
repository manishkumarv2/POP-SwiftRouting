//
//  Routing.swift
//  POP-Routing
//
//  Created by Manish Kumar on 2/7/18.
//  Copyright © 2018 v2solutions. All rights reserved.
//

import Foundation
import UIKit

public protocol Routing {
    associatedtype StoryboardIdentifier: RawRepresentable
    
    func show<T: UIViewController>(storyboard: StoryboardIdentifier, identifier: String?, configure: ((T) -> Void)?)
    
}

public extension Routing where Self: UIViewController, StoryboardIdentifier.RawValue == String{
    
    func show<T: UIViewController>(storyboard: StoryboardIdentifier, identifier: String? = nil, configure: ((T) -> Void)? = nil) {
        let storyboard = UIStoryboard(name: storyboard.rawValue)
        
        guard let controller = (identifier != nil
            ? storyboard.instantiateViewController(withIdentifier: identifier!)
            : storyboard.instantiateInitialViewController()) as? T
            else { return assertionFailure("Invalid controller for storyboard \(storyboard).") }
        
        configure?(controller)
        
        show(controller, sender: self)
    }
    
    
}
