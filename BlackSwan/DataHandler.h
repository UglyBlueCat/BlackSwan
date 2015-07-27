//
//  DataHandler.h
//  BlackSwan
//
//  Created by Robin Spinks on 26/07/2015.
//  Copyright (c) 2015 Robin Spinks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface DataHandler : NSObject

+ (DataHandler*)sharedInstance;
- (instancetype)initWithBaseURL:(NSString*)url;
- (void)rollDieWithSides:(NSString*)sides
                 success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
