//
//  ViewController.h
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

//@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;


-(void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion;


@end
