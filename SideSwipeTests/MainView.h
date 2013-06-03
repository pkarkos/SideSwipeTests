//
//  MainView.h
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIScrollView

- (id)initWithFrame:(CGRect)frame andYellow:(BOOL)yellowOrNot;

@property (strong, nonatomic) UIButton *testButton;

@end
