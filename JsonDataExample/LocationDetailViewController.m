//
//  LocationDetailViewController.m
//  JsonDataExample
//
//  Created by Abhishek Desai on 8/16/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import "LocationDetailViewController.h"
#import "MapAnnotation.h"

@interface LocationDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UILabel *telephoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *urlLabel;
@property (weak, nonatomic) IBOutlet UITextView *informationTextView;
@property (weak, nonatomic) IBOutlet UISwitch *visitedSwitch;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation LocationDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // We are delegate for map view
    self.mapView.delegate = self;
    
    self.title = self.location.title;
    self.placeLabel.text = self.location.place;
    self.informationTextView.text = self.location.information;
    self.informationTextView.selectable = NO;
    self.telephoneLabel.text = self.location.telephone;
    self.urlLabel.text = self.location.url;
    self.visitedSwitch.on = [self.location.visited boolValue];
    
    // Make a map annotation for a pin from the longitude/latitude points
    MapAnnotation *mapPoint = [[MapAnnotation alloc] init];
    mapPoint.coordinate = CLLocationCoordinate2DMake([self.location.latitude doubleValue], [self.location.longitude doubleValue]);
    mapPoint.title = self.location.title;
    
    // Add it to the map view
    [self.mapView addAnnotation:mapPoint];
    
    // Zoom to a region around the pin
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(mapPoint.coordinate, 500, 500);
    [self.mapView setRegion:region];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    MKPinAnnotationView *view = nil;
    static NSString *reuseIdentifier = @"MapAnnotation";
    
    // Return a MKPinAnnotationView with a simple accessory button
    view = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:reuseIdentifier];
    if(!view) {
        view = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
        view.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        view.canShowCallout = YES;
        view.animatesDrop = YES;
    }
    
    return view;
}

@end
