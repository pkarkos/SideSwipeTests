//
//  TableViewController.m
//  SideSwipeTests
//
//  Created by Peter Karkos on 5/26/13.
//  Copyright (c) 2013 Peter Karkos. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface RootViewController: TableViewController

@end

@implementation TableViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Test"];
    [self.view setBackgroundColor:[UIColor brownColor]];
    //self.swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    //[self.swipeGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    //[self.view addGestureRecognizer:self.swipeGesture];

}

//-(void)swipeLeft
//{
//    if (self.swipeGesture.direction == UISwipeGestureRecognizerDirectionLeft) {
//           [self cycleFromController:self ToController: self.viewController];
//    }
// 
//}
//
//
//-(void)cycleFromController: (UIViewController *)fromController ToController: (UIViewController *)toController
//{
//    [fromController willMoveToParentViewController:toController];
//    
//    [self.view removeFromSuperview];
//    
//    [self transitionFromViewController:fromController toViewController:toController duration: 5.0f options:
//        0
//                            animations: ^{
//                                            //toController.view.frame = fromController.view.frame;
//                                            [UIView beginAnimations:nil context:nil];
//                                            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
//                                            [UIView setAnimationDuration: 5.0f];
//                                            [UIView commitAnimations];
//                                
//                            }
//  completion:^(BOOL finished){
//        [toController removeFromParentViewController];
//        [fromController didMoveToParentViewController:self];
//    }];
//            
//    
//}
//
//-(void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion
//{
//    
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if ( cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    // Configure the cell...
    
    cell.textLabel.text = @"Something";
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
