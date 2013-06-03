//
//  TableViewController.h
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface TableViewController : UITableViewController

@property (strong, nonatomic) UISwipeGestureRecognizer *swipeGesture;
@property (strong, nonatomic) ViewController *viewController;

@end
