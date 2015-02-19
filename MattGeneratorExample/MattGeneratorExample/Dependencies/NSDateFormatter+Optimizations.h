//
//  NSDateFormatter+Optimizations.h
//
//  Created by MattBaranowski on 12/1/14.
//  Copyright (c) 2014 Willowtree Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatterCache : NSObject

+(NSDateFormatter*)formatter:(NSString*)format;

@end