//
//  DataHandler.m
//  BlackSwan
//
//  Created by Robin Spinks on 26/07/2015.
//  Copyright (c) 2015 Robin Spinks. All rights reserved.
//

#import "DataHandler.h"

@interface DataHandler ()

@property NSURL* BaseURL;

@end

@implementation DataHandler

// Set up the data handler as a singleton
+ (DataHandler*)sharedInstance {
    static DataHandler* _sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[DataHandler alloc] init];
    });
    return _sharedInstance;
}

// Initialise the data handler with the base url, which will be used for all API requests
// This assumes that only one API will be accessed, which is the case for now
- (instancetype)initWithBaseURL:(NSString*)url {
    self = [super init];
    if (self) {
        _BaseURL = [NSURL URLWithString:url];
    }
    return self;
}

// Fetch a simple result for a standard six-sided die, i.e. no parameters passed to the API
- (int)fetchSimpleResult {
    int result;
    return result;
}

@end
