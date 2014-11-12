//
//  ViewController.h
//  aWhere.AWHEREAPP
//
//  Created by A'WHere on 10/16/14.
//  Copyright (c) 2014 A'WHere. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <GMSMapViewDelegate>
@property (strong, nonatomic) IBOutlet GMSMapView *mapView_;
@property(nonatomic,retain) CLLocationManager *locationManager;

@end

