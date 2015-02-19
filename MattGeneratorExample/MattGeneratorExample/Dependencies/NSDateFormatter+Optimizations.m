//
//  NSDateFormatter+Optimizations.m
//
//  Created by MattBaranowski on 12/1/14.
//  Copyright (c) 2014 Willowtree Apps. All rights reserved.
//

#import "NSDateFormatter+Optimizations.h"

@interface NSDateFormatterCache ()
@property (atomic) NSCache* mainThreadCache;
@property (atomic) NSCache* backgroundThreadCache;
@end

@implementation NSDateFormatterCache

-(instancetype)init
{
    self = [super init];
    if (self != nil) {
        self.mainThreadCache = [NSCache new];
        self.backgroundThreadCache = [NSCache new];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onLocaleDidChange:) name:NSCurrentLocaleDidChangeNotification object:nil];
    }
    return self;
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NSCurrentLocaleDidChangeNotification object:nil];
}

-(void)onLocaleDidChange:(NSNotification*)notification
{
    [self.mainThreadCache removeAllObjects];
    [self.backgroundThreadCache removeAllObjects];
}

+(instancetype)sharedCache {
    static NSDateFormatterCache* sharedCache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCache = [NSDateFormatterCache new];
    });
    
    return sharedCache;
}

+(NSDateFormatter*)formatter:(NSString*)format {
    NSDateFormatterCache* sharedCache = [NSDateFormatterCache sharedCache];
    NSCache* threadCache = [NSThread isMainThread] ? sharedCache.mainThreadCache : sharedCache.backgroundThreadCache;
    
    NSDateFormatter* formatter = [threadCache objectForKey:format];
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setLocale:[NSLocale currentLocale]];
        [formatter setTimeZone: [NSTimeZone localTimeZone]];
        [formatter setDateFormat:format];
        [threadCache setObject:formatter forKey:format];
    }
    
    return formatter;
}

@end
