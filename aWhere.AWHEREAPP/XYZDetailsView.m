//
//  XYZDetailsView.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "XYZDetailsView.h"

@interface XYZDetailsView ()

@property NSString *myString;

@end

@implementation XYZDetailsView

- (void)setString:(NSString*)input {
    NSLog(@"Got it running!");
    self.myString = input;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.myString = @"This is a test";
    //self.myString  = @"hehho";
    self.detailsLabel.text = self.myString;
    
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
