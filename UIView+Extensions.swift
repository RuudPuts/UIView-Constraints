//
//  UIView+Extensions.swift
//  
//
//  Created by Ruud Puts on 07/04/15.
//  Copyright (c) 2015 Ruud Puts. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Constraints
    
    var leftConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.Leading)
        }
    }
    
    
    var rightConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.Trailing)
        }
    }
    
    
    var topConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.Top)
        }
    }
    
    var bottomConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.Bottom)
        }
    }
    
    // MARK: - Constraints (Width/Height)
    
    var widthConstraint: NSLayoutConstraint? {
        get {
            return findConstraint(.Width)
        }
    }
    
    var heightConstraint: NSLayoutConstraint? {
        get {
            return findConstraint(.Height)
        }
    }
    
    private func findConstraint(attribute: NSLayoutAttribute) -> NSLayoutConstraint? {
        var foundConstraint: NSLayoutConstraint?
        
        if attribute == .Width || attribute == .Height {
            for (index, constraint: NSLayoutConstraint) in enumerate(self.constraints() as! [NSLayoutConstraint]) {
                if constraint.isMemberOfClass(NSLayoutConstraint) && constraint.firstAttribute == attribute {
                    foundConstraint = constraint
                }
            }
        }
        
        return foundConstraint
    }
    
    // MARK: - Constraints (Center)
    
    var horizontalCenterConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.CenterX)
        }
    }
    
    var verticalCenterConstraint: NSLayoutConstraint? {
        get {
            return findParentConstraint(.CenterY)
        }
    }
    
    private func findParentConstraint(attribute: NSLayoutAttribute) -> NSLayoutConstraint? {
        var foundConstraint: NSLayoutConstraint?
        
        for (index, constraint: NSLayoutConstraint) in enumerate(self.superview?.constraints() as! [NSLayoutConstraint]) {
            if ((constraint.firstItem as! UIView == self && constraint.firstAttribute == attribute) ||
                (constraint.secondItem as! UIView? == self && constraint.secondAttribute == attribute)) &&
                constraint.isMemberOfClass(NSLayoutConstraint) {
                    foundConstraint = constraint
            }
        }
        
        return foundConstraint
    }
}
