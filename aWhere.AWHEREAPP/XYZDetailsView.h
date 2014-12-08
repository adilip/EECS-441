//
//  XYZDetailsView.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/6/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZBarData.h"

@interface XYZDetailsView : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *openTime;
@property (weak, nonatomic) IBOutlet UILabel *closeTime;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (nonatomic, weak) IBOutlet UIImageView *barImage;
@property (weak, nonatomic) IBOutlet UILabel *barDescription;

- (void)populateBar:(XYZBarData*)input;
-(IBAction) openUber:(id)sender;
@end
