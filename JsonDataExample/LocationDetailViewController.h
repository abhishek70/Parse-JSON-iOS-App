//
//  LocationDetailViewController.h
//  JsonDataExample
//
//  Created by Abhishek Desai on 8/16/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Location.h"
#import <MapKit/MapKit.h>

@interface LocationDetailViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) Location *location;

@end
