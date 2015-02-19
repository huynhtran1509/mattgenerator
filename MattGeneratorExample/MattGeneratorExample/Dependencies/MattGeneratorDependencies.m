//
//  MattGeneratorDependencies.m
//
//  Created by MattBaranowski on 2/16/15.
//  Copyright (c) 2015 MattBaranowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <time.h>
#import <xlocale.h>
#import "NSDateFormatter+Optimizations.h"

NSDate* (^dateFromString)(NSString* dateString, NSString* format) = ^NSDate* (NSString* dateString, NSString* format)
{
    if ([format isEqualToString:@"yyyy-MM-dd HH:mm:ss"]) {
        time_t timeInterval;
        struct tm tm;
        const char* dateCStr = [dateString cStringUsingEncoding:NSASCIIStringEncoding];
        strptime_l(dateCStr, "%Y-%m-%d %H:%M:%S", &tm, NULL);
        tm.tm_isdst = -1;
        timeInterval = mktime(&tm);
        return [NSDate dateWithTimeIntervalSince1970:timeInterval];
    } else {
        NSDateFormatter *formatter = [NSDateFormatterCache formatter:format];
        return [formatter dateFromString:dateString];
    }
};

NSString* (^stringFromDate)(NSDate* date, NSString* format) = ^NSString* (NSDate* date, NSString* format) {
    NSDateFormatter *formatter = [NSDateFormatterCache formatter:format];
    NSString *dateString = [formatter stringFromDate:date];
    return dateString;
};