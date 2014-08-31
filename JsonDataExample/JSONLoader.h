//
//  JSONLoader.h
//  JsonDataExample
//
//  Created by Abhishek Desai on 8/16/14.
//  Copyright (c) 2014 Abhishek Desai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONLoader : NSObject

// Return an array of Location objects from the json file at location given by url
- (NSArray *)locationsFromJSONFile:(NSURL *)url;

@end
