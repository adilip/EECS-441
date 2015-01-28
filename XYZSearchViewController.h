//
//  XYZSearchViewController.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZSearchViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;
- (IBAction)searchButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end
