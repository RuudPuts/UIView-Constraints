//
//  UIView+Constraints.h
//
//  Created by Ruud Puts on 03/04/14.
//

#import <UIKit/UIKit.h>

@interface UIView (Constraints)

/**
 *  Searches the NSLayoutConstraint at the top of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)topConstraint;
/**
 *  Searches the NSLayoutConstraint at the right of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)rightConstraint;
/**
 *  Searches the NSLayoutConstraint at the bottom of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)bottomConstraint;
/**
 *  Searches the NSLayoutConstraint at the left of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)leftConstraint;
/**
 *  Searches the width NSLayoutConstraint of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)widthConstraint;
/**
 *  Searches the height NSLayoutConstraint of the view
 *
 *  @return NSLayoutContstraint when found, nil otherwise
 */
- (NSLayoutConstraint *)heightConstraint;

@end
