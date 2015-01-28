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
#import "BarTableCell.h"

@interface XYZTableViewController ()

@property NSMutableArray *barListItems;
@property XYZBarData *selectedBar;

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

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    BarDataManager *sharedManager = [BarDataManager sharedManager];
    self.barListItems = sharedManager.data;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Initialize thumbnails
    //thumbnails = [NSArray arrayWithObjects:@"club_icon.png", @"bar_icon.png", nil];

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
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    BarTableCell *cell = (BarTableCell*)[tableView dequeueReusableCellWithIdentifier:@"BarTableCell"];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"BarTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    // Configure the cell...
    XYZBarData *bar = [self.barListItems objectAtIndex:indexPath.row];
    //cell.textLabel.text = bar.name;
    cell.nameLabel.text = bar.name;
    cell.locationLabel.text = bar.location;
    cell.typeLabel.text = bar.category;
    if ([bar.category  isEqual: @"Pub"]) {
        cell.imageView.image = [UIImage imageNamed:@"pub_icon.png"];
    }
    else if ([bar.category isEqual: @"Club"]) {
        cell.imageView.image = [UIImage imageNamed:@"club_icon.png"];
    }
    else if ([bar.category isEqual: @"Bar"]) {
        cell.imageView.image = [UIImage imageNamed:@"bar_icon.png"];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = cell.textLabel.text;
    //NSLog(cellText);
    self.selectedBar = [self.barListItems objectAtIndex:indexPath.row];
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
        thisBar = self.selectedBar;
        [v populateBar:thisBar];
    }
    else {
        NSLog(@"This wasn't supposed to happen!");
    }
    // Pass the selected object to the new view controller.
}


@end
