//
//  MainView.m
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import "MainView.h"

@implementation MainView



- (id)initWithFrame:(CGRect)frame andYellow:(BOOL)yellowOrNot
{
    self = [super initWithFrame:frame];
    if (self) {
        if (yellowOrNot) {
            [self setBackgroundColor:[UIColor yellowColor]];
        }
        else {
            [self setBackgroundColor:[UIColor clearColor]];
        }
    self.testButton = [[UIButton alloc] initWithFrame:CGRectMake(360, 40, 100, 40)];
    [self.testButton setBackgroundColor:[UIColor whiteColor]];
    [self addSubview:self.testButton];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
