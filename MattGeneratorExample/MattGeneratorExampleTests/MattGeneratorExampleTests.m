//
//  MattGeneratorExampleTests.m
//  MattGeneratorExampleTests
//
//  Created by MattBaranowski on 2/12/15.
//  Copyright (c) 2015 MattBaranowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "Event.h"

@interface MattGeneratorExampleTests : XCTestCase
@property (nonatomic) NSManagedObjectContext* context;
@end

@implementation MattGeneratorExampleTests

- (void)setUp {
    [super setUp];
    
    AppDelegate* appDelegate = [[UIApplication sharedApplication] delegate];
    self.context = [appDelegate managedObjectContext];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    
    
    Event* evt = [Event createFromJSON:@{} inContext:self.context];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
