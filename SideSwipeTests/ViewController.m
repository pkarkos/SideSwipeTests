//
//  ViewController.m
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"
#import "TableViewController.h"
#import "TestMainView.h"

@interface ViewController ()

@property (strong, nonatomic) MainView *scrollView;
@property (strong, nonatomic) TestMainView *mainView;
//@property (strong, nonatomic) TestMainView *clearView;
@property (strong, nonatomic) TableViewController *tableViewController;
@property (strong, nonatomic) UIButton  *testButton;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView= [[MainView alloc] initWithFrame:CGRectMake(0, 0, 400, 700) andYellow:NO];
    self.scrollView.contentSize = CGSizeMake(670, 700);
    self.scrollView.contentOffset = CGPointMake(270, 200);

    self.mainView = [[TestMainView alloc] initWithFrame:CGRectMake(270, 0, 320, 700)];
    [self.mainView setBackgroundColor:[UIColor yellowColor]];

    
    
    self.scrollView.delegate = self;
    self.scrollView.bounces = NO;
    self.scrollView.directionalLockEnabled = YES;
    
    [self.scrollView addSubview:self.mainView];
   
    [self.view addSubview:self.scrollView];
     [self navigationBarHidden];
    
    self.tableViewController =[[TableViewController alloc] init];
    

    
    
    
}

-(BOOL)navigationBarHidden
{
    [self.navigationController setNavigationBarHidden:YES];
    return YES;
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    if (self.scrollView.contentOffset.x <90 ){
        [self initChildController:self.tableViewController];

        
        //***NOTE: A better way to do this besides transitioning from view controllers may be to do it the same way we did it with going left; once all the way right, switch to child view controller.
    }
    else{
        [self.scrollView scrollRectToVisible:CGRectMake(360, 0, 320, 460) animated:YES];
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{

        [self initTableViewInBackground: self.tableViewController.view];
}

-(void)initTableViewInBackground: (UIView *)toView
{
    [toView setFrame:CGRectMake(0, 0, 270, 460)];
        [self.view addSubview:toView];
        [self.scrollView addSubview:self.mainView];
        //[self.scrollView addSubview:self.clearView];
        [self.view addSubview:self.scrollView];
}

-(void)initChildController: (UIViewController *)toController
{
    [self addChildViewController:toController];
    [toController.view setFrame:CGRectMake(0, 0 , 270, 460)];
   [self.view bringSubviewToFront:self.tableViewController.view];
    

}


                             
-(void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion
    {

    }


@end
