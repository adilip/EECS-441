//
//  BarTableCell.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/12/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "BarTableCell.h"

@implementation BarTableCell

@synthesize nameLabel = _nameLabel;
@synthesize typeLabel = _typeLabel;
@synthesize locationLabel = _locationLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
