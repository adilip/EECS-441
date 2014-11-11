//
//  XYZTableViewController.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "XYZTableViewController.h"
#import "XYZDetailsView.h"
#import "XYZBarData.h"

@interface XYZTableViewController ()

@property NSMutableArray *barListItems;

@end

@implementation XYZTableViewController

/*
 @property NSString *name;
 @property NSString *price;
 @property NSString *rating;
 @property NSString *category;
 @property NSString *open_time;
 @property NSString *close_time;
 @property NSString *location;
 */

- (void)initBarListData {
    XYZBarData *bar1 = [[XYZBarData alloc] init];
    bar1.name = @"Ashley's Pub";
    bar1.price = @"$3.00";
    bar1.rating = @"3";
    bar1.category = @"Pub";
    bar1.open_time = @"7:00am";
    bar1.close_time = @"10:00pm";
    [self.barListItems addObject:bar1];
    XYZBarData *bar2 = [[XYZBarData alloc] init];
    bar2.name = @"Charley's Bar";
    bar2.price = @"$5.00";
    bar2.rating = @"4";
    bar2.category = @"Bar";
    bar2.open_time = @"10:00am";
    bar2.close_time = @"11:00pm";
    [self.barListItems addObject:bar2];
    XYZBarData *bar3 = [[XYZBarData alloc] init];
    bar3.name = @"Rick's American Cafe";
    bar3.price = @"$2.00";
    bar3.rating = @"2";
    bar3.category = @"Club";
    bar3.open_time = @"7:00pm";
    bar3.close_time = @"2:00am";
    [self.barListItems addObject:bar3];
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.barListItems = [[NSMutableArray alloc] init];
    [self initBarListData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.barListItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    // Configure the cell...
    XYZBarData *bar = [self.barListItems objectAtIndex:indexPath.row];
    cell.textLabel.text = bar.name;
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = cell.textLabel.text;
    NSLog(cellText);
    //perform the segue
    [self performSegueWithIdentifier:@"toBarDetail" sender:self];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    if ([[segue identifier] isEqualToString:@"toBarDetail"]) {
        NSLog(@"At least we got here!");
        XYZDetailsView *v = [segue destinationViewController];
        XYZBarData *thisBar = [[XYZBarData alloc] init];
        thisBar.name = @"Testing that this still works";
        [v populateBar:thisBar];
    }
    else {
        NSLog(@"This wasn't supposed to happen!");
    }
    // Pass the selected object to the new view controller.
}


@end
