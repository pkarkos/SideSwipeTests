//
//  AppDelegate.h
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
//@class TableViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
//@property (strong, nonatomic) TableViewController *tableViewController;

@property (strong, nonatomic) UINavigationController *masterController;

@end
