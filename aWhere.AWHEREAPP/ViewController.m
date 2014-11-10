#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

@import CoreLocation;

@interface ViewController () <CLLocationManagerDelegate>
@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
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
   

    
    // Ricks Marker
    GMSMarker *ricks = [[GMSMarker alloc] init];
    ricks.position = CLLocationCoordinate2DMake(42.274446, -83.734409);
    ricks.title = @"Rick's American Cafe";
    ricks.snippet = @"Club\n611 Church St";
    ricks.map = self.mapView_;
    
    // Skeeps Marker
    GMSMarker *skeeps = [[GMSMarker alloc] init];
    skeeps.position = CLLocationCoordinate2DMake(42.278890, -83.742216);
    skeeps.title = @"Scorekeeper's Bar and Grill";
    skeeps.snippet = @"Sports Bar\n310 Maynard St";
    skeeps.map = self.mapView_;
    
    // Necto Marker
    GMSMarker *necto = [[GMSMarker alloc] init];
    necto.position = CLLocationCoordinate2DMake(42.279283, -83.742442);
    necto.title = @"Necto";
    necto.snippet = @"Club\n516 E. Liberty St";
    necto.map = self.mapView_;
    
    //Rush Street Marker
    GMSMarker *rush = [[GMSMarker alloc] init];
    rush.position = CLLocationCoordinate2DMake(42.279052, -83.748854);
    rush.title = @"Rush Street";
    rush.snippet = @"Lounge\n314 S. Main St";
    rush.map = self.mapView_;
    
    //Charleys Marker
    GMSMarker *charleys = [[GMSMarker alloc] init];
    charleys.position = CLLocationCoordinate2DMake(42.274874, -83.734880);
    charleys.title = @"Good Time Charley's";
    charleys.snippet = @"Pub\n1140 S. University St";
    charleys.map = self.mapView_;
    
    //Ashleys Marker
    GMSMarker *ashleys = [[GMSMarker alloc] init];
    ashleys.position = CLLocationCoordinate2DMake(42.278078, -83.740968);
    ashleys.title = @"Ashley's";
    ashleys.snippet = @"Pub\n338 S. State St";
    ashleys.map = self.mapView_;
    
    //Heidelberg Marker
    GMSMarker *heidelberg = [[GMSMarker alloc] init];
    heidelberg.position = CLLocationCoordinate2DMake(42.282890, -83.748758);
    heidelberg.title = @"Heidelberg";
    heidelberg.snippet = @"Bar\n215 N. Main St";
    heidelberg.map = self.mapView_;
}



@end