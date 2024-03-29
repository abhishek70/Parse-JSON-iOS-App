//
//  Location.m
//  JsonDataExample
//
//  Created by Abhishek Desai on 8/16/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import "Location.h"

@implementation Location

// Init the object with information from a dictionary
- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary {
    if(self = [self init]) {
        // Assign all properties with keyed values from the dictionary
        _title = [jsonDictionary objectForKey:@"title"];
        _place = [jsonDictionary objectForKey:@"place"];
        _information = [jsonDictionary objectForKey:@"information"];
        _telephone = [jsonDictionary objectForKey:@"telephone"];
        _latitude = [jsonDictionary objectForKey:@"latitude"];
        _longitude = [jsonDictionary objectForKey:@"longitude"];
        _url = [jsonDictionary objectForKey:@"url"];
        _visited = [jsonDictionary objectForKey:@"visited"];
    }
    
    return self;
}

@end
