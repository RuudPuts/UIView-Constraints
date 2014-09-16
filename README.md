UIView+Constraints
==================

UIView+Constraints is a Objective-C category on UIView, giving you a quick and convenient way to get constrains from a UIView (or any of it's subclasses).

UIView+Constraints gives you all you need to move and resize a view. The following is available:
  - topConstraint
  - leftConstraint
  - bottomConstraint
  - rightConstraint
  - widthConstraint
  - heightConstraint

Only constraints added by the UIView by a developer, either in code or in a XIB/Storyboard are handled. If the requested constraint is not set, it will return *nil*.

####How to use:
```obj-c
@interface MyViewController()

// IBOutlet to inferace builder, has a width constraint
@property (nonatomic, weak) IBOutlet UIView *demoView;

@end

@implementation MyViewController

- (void)resizeView {
    // Request the widthConstraint, and set a new constant
    self.demoView.widthConstraint.constant = 150;
    // Let the view layout itself to apply the new constraint constant
    [self.demoView layoutIfNeeded];
}

- (void)resizeViewWithAnimation {
    // Request the widthConstraint, and set a new constant
    self.demoView.widthConstraint.constant = 150;
    // Contain layoutIfNeeded in an animation block to animate the width change
    [UIView animateWithDuration:0.3 animations:^{
        // Let the view layout itself to apply the new constraint constant
        [self.demoView layoutIfNeeded];
    }];
}

@end
```

####Planned updates:
  - Setting values to existing constraints easier
  - Creating constraints from scratch without hassle
  - Whatever is requested :-)
