//
//  XYZTableViewController.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZTableViewController : UITableViewController
@property (nonatomic, strong) NSMutableArray *bars;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@end
