//
//  XYZBarData.h
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/10/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

@interface XYZBarData : NSObject

@property NSString *name;
@property NSString *price;
@property NSString *rating;
@property NSString *category;
@property NSString *open_time;
@property NSString *close_time;
@property NSString *location;
@property GMSMarker *marker;

@end
