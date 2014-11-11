//
//  XYZDetailsView.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "XYZDetailsView.h"

@interface XYZDetailsView ()

@property XYZBarData *thisBar;

@end

@implementation XYZDetailsView


- (void)populateBar:(XYZBarData*)input {
    self.thisBar = input;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.myString = @"This is a test";
    //self.myString  = @"hehho";
    NSLog(@"View is now loading");
    self.detailsLabel.text = self.thisBar.name;
    self.rating.text = self.thisBar.rating;
    self.price.text = self.thisBar.price;
    self.category.text = self.thisBar.category;
    self.openTime.text = self.thisBar.open_time;
    self.closeTime.text = self.thisBar.close_time;
    self.location.text = self.thisBar.location;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
