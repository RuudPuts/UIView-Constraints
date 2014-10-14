//
//  UIView+Constraints.m
//
//  Created by Ruud Puts on 03/04/14.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

#pragma mark - Public methods

- (NSLayoutConstraint *)topConstraint {
	__block NSLayoutConstraint *topConstraint = nil;
	[self.superview.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeTop) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeTop)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             topConstraint = constraint;
         }
     }];
	return topConstraint;
}

- (NSLayoutConstraint *)rightConstraint {
	__block NSLayoutConstraint *rightConstraint = nil;
	[self.superview.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeTrailing) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeTrailing)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             rightConstraint = constraint;
         }
     }];
	return rightConstraint;
}

- (NSLayoutConstraint *)bottomConstraint {
	__block NSLayoutConstraint *bottomConstraint = nil;
	[self.superview.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeBottom) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeBottom)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             bottomConstraint = constraint;
         }
     }];
	return bottomConstraint;
}

- (NSLayoutConstraint *)leftConstraint {
	__block NSLayoutConstraint *leftConstraint = nil;
	[self.superview.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeLeading) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeLeading)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             leftConstraint = constraint;
         }
     }];
	return leftConstraint;
}

- (NSLayoutConstraint *)widthConstraint {
	__block NSLayoutConstraint *widthConstraint = nil;
	[self.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (constraint.firstAttribute == NSLayoutAttributeWidth &&
             [constraint class] == [NSLayoutConstraint class]) {
             widthConstraint = constraint;
         }
     }];
	return widthConstraint;
}

- (NSLayoutConstraint *)heightConstraint {
	__block NSLayoutConstraint *heightConstraint = nil;
	[self.constraints enumerateObjectsUsingBlock: ^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (constraint.firstAttribute == NSLayoutAttributeHeight &&
             [constraint class] == [NSLayoutConstraint class]) {
             heightConstraint = constraint;
         }
     }];
	return heightConstraint;
}

- (NSLayoutConstraint *)centerXConstraint {
    __block NSLayoutConstraint *centerXConstraint = nil;
    [self.superview.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeCenterX) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeCenterX)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             centerXConstraint = constraint;
         }
     }];
    return centerXConstraint;
}

- (NSLayoutConstraint *)centerYConstraint {
    __block NSLayoutConstraint *centerYConstraint = nil;
    [self.superview.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop)
     {
         if (((constraint.firstItem == self && constraint.firstAttribute == NSLayoutAttributeCenterY) ||
              (constraint.secondItem == self && constraint.secondAttribute == NSLayoutAttributeCenterY)) &&
             [constraint class] == [NSLayoutConstraint class]) {
             centerYConstraint = constraint;
         }
     }];
    return centerYConstraint;
}

@end
