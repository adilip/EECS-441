//
//  BarDataManager.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/12/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "BarDataManager.h"

@implementation BarDataManager

@synthesize data;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static BarDataManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        data = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}
@end
