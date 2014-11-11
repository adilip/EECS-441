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
- (void)populateBar:(XYZBarData*)input;
@end
