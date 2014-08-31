//
//  Location.h
//  JsonDataExample
//
//  Created by Abhishek Desai on 8/16/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject


@property (readonly) NSString *title;
@property (readonly) NSString *place;
@property (readonly) NSNumber *latitude;
@property (readonly) NSNumber *longitude;
@property (readonly) NSString *information;
@property (readonly) NSString *telephone;
@property (readonly) NSString *url;
@property (readonly) NSNumber *visited;

- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary;

@end
