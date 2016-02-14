//
//  boostTests.m
//  boostTests
//
//  Created by Furushchev on 02/14/2016.
//  Copyright (c) 2016 Furushchev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ROSAppDelegate.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBoostFunction
{
    NSString *str = [ROSAppDelegate testBoostFunction];
    XCTAssertEqualObjects(str, @"Will Success Spoil Rock Hunter?");
}

@end

