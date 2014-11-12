//
//  BarDataManager.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/12/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZBarData.h"

@interface BarDataManager : NSObject {
    NSMutableArray *data;
}

@property NSMutableArray *data;

+ (id)sharedManager;

@end