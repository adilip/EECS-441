//
//  BarTableCell.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/12/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *typeLabel;
@property (nonatomic, weak) IBOutlet UILabel *locationLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
