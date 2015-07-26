//
//  DataHandler.h
//  BlackSwan
//
//  Created by Robin Spinks on 26/07/2015.
//  Copyright (c) 2015 Robin Spinks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataHandler : NSObject

+ (DataHandler*)sharedInstance;
- (instancetype)initWithBaseURL:(NSString*)url;

@end
