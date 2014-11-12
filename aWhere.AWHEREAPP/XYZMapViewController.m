#import "XYZMapViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>
#import "XYZBarData.h"

@import CoreLocation;

@interface ViewController () <CLLocationManagerDelegate>

@property NSMutableArray *locationList;

@end

@implementation ViewController


- (void)initLocList {

    XYZBarData *bar1 = [[XYZBarData alloc] init];
    bar1.name = @"Ashley's Pub";
    bar1.price = @"$3.00";
    bar1.rating = @"3.1";
    bar1.category = @"Pub";
    bar1.open_time = @"7:00am";
    bar1.close_time = @"10:00pm";
    bar1.location = @"338 S. State St";
    bar1.marker = [[GMSMarker alloc] init];
    bar1.marker.position = CLLocationCoordinate2DMake(42.278078, -83.740968);
    bar1.marker.title = @"Ashley's";
    bar1.marker.snippet = @"Pub\n338 S. State St";
    bar1.marker.map = self.mapView_;
    [self.locationList addObject:bar1];
    
    XYZBarData *bar2 = [[XYZBarData alloc] init];
    bar2.name = @"Charley's Bar";
    bar2.price = @"$5.00";
    bar2.rating = @"4.2";
    bar2.category = @"Bar";
    bar2.open_time = @"10:00am";
    bar2.close_time = @"11:00pm";
    bar2.location = @"1140 S. University St";
    bar2.marker = [[GMSMarker alloc] init];
    bar2.marker.position = CLLocationCoordinate2DMake(42.274874, -83.734880);
    bar2.marker.title = @"Good Time Charley's";
    bar2.marker.snippet = @"Pub\n1140 S. University St";
    bar2.marker.map = self.mapView_;
    
    [self.locationList addObject:bar2];
    XYZBarData *bar3 = [[XYZBarData alloc] init];
    bar3.name = @"Rick's American Cafe";
    bar3.price = @"$2.00";
    bar3.rating = @"2.3";
    bar3.category = @"Club";
    bar3.open_time = @"7:00pm";
    bar3.close_time = @"2:00am";
    bar3.location = @"611 Church St";
    bar3.marker = [[GMSMarker alloc] init];
    bar3.marker.position = CLLocationCoordinate2DMake(42.274446, -83.734409);
    bar3.marker.title = @"Rick's American Cafe";
    bar3.marker.snippet = @"Club\n611 Church St";
    bar3.marker.map = self.mapView_;
    [self.locationList addObject:bar3];
    
    XYZBarData *bar4 = [[XYZBarData alloc] init];
    bar4.name = @"Rush Street";
    bar4.price = @"$8.00";
    bar4.rating = @"4.3";
    bar4.category = @"Lounge";
    bar4.open_time = @"7:00pm";
    bar4.close_time = @"2:00am";
    bar4.location = @"314 S. Main St";
    bar4.marker = [[GMSMarker alloc] init];
    bar4.marker.position = CLLocationCoordinate2DMake(42.279052, -83.748854);
    bar4.marker.title = @"Rush Street";
    bar4.marker.snippet = @"Lounge\n314 S. Main St";
    bar4.marker.map = self.mapView_;
    [self.locationList addObject:bar4];
    
    XYZBarData *bar5 = [[XYZBarData alloc] init];
    bar5.name = @"NECTO";
    bar5.price = @"$0.00";
    bar5.rating = @"0";
    bar5.category = @"Club";
    bar5.open_time = @"7:00pm";
    bar5.close_time = @"2:00am";
    bar5.location = @"516 E. Liberty St";
    bar5.marker = [[GMSMarker alloc] init];
    bar5.marker.position = CLLocationCoordinate2DMake(42.279283, -83.742442);
    bar5.marker.title = @"Necto";
    bar5.marker.snippet = @"Club\n516 E. Liberty St";
    bar5.marker.map = self.mapView_;
    [self.locationList addObject:bar5];
    
    
    XYZBarData *bar6 = [[XYZBarData alloc] init];
    bar6.name = @"Scorekeepers";
    bar6.price = @"$3.00";
    bar6.rating = @"4";
    bar6.category = @"Sports Bar";
    bar6.open_time = @"7:00pm";
    bar6.close_time = @"2:00am";
    bar6.location = @"310 Maynard St";
    bar6.marker = [[GMSMarker alloc] init];
    bar6.marker.position = CLLocationCoordinate2DMake(42.278890, -83.742216);
    bar6.marker.title = @"Scorekeeper's Bar and Grill";
    bar6.marker.snippet = @"Sports Bar\n310 Maynard St";
    bar6.marker.map = self.mapView_;
    [self.locationList addObject:bar6];
    
    // some more false ones to fill out the table
    /*
    [self.locationList addObject:bar2];
    [self.locationList addObject:bar1];
    [self.locationList addObject:bar3];
    [self.locationList addObject:bar4];
    [self.locationList addObject:bar2];
    [self.locationList addObject:bar5];
    [self.locationList addObject:bar1];
     */
}

- (void) viewDidLoad {
    [super viewDidLoad];
    self.locationList = [[NSMutableArray alloc] init];
    // Don't forget to add NSLocationWhenInUseUsageDescription in MyApp-Info.plist and give it a string
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    // Check for iOS 8. Without this guard the code will crash with "unknown selector" on iOS7.
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [self.locationManager startUpdatingLocation];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:self.locationManager.location.coordinate.latitude longitude:self.locationManager.location.coordinate.longitude zoom:14.3];
    //self.mapView_ = [GMSMapView mapWithFrame: CGRectZero camera:camera];
    self.mapView_.camera = camera;
    
    //Controls whether the My Location dot and accuracy circle is enabled.
    self.mapView_.myLocationEnabled = YES;
    //Controls the type of map tiles that should be displayed.
    self.mapView_.mapType = kGMSTypeNormal;
    //Shows the my location button on the map
    self.mapView_.settings.myLocationButton = YES;
    //Sets the view controller to be the GMSMapView delegate
    self.mapView_.delegate = self;

    // initialize the locations
    [self initLocList];


    //Heidelberg Marker
    /*
    GMSMarker *heidelberg = [[GMSMarker alloc] init];
    heidelberg.position = CLLocationCoordinate2DMake(42.282890, -83.748758);
    heidelberg.title = @"Heidelberg";
    heidelberg.snippet = @"Bar\n215 N. Main St";
    heidelberg.map = self.mapView_;
    */
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    /*
    if ([[segue identifier] isEqualToString:@"toBarDetail"]) {
        NSLog(@"At least we got here!");
        XYZDetailsView *v = [segue destinationViewController];
        XYZBarData *thisBar = [[XYZBarData alloc] init];
        thisBar = self.selectedBar;
        [v populateBar:thisBar];
    }
    else {
        NSLog(@"This wasn't supposed to happen!");
    }
    */
    NSLog(@"Running transition script");
    // Pass the selected object to the new view controller.
}


@end