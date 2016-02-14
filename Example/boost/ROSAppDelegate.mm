//
//  ROSAppDelegate.mm
//  boost
//
//  Created by Furushchev on 02/14/2016.
//  Copyright (c) 2016 Furushchev. All rights reserved.
//

#import "ROSAppDelegate.h"

#include <boost/regex.hpp>
#include <iostream>
#include <sstream>
#include <string>


@implementation ROSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *body = @[@"To: George Shmidlapn",
                      @"From: Rita Marlowe",
                      @"Subject: Will Success Spoil Rock Hunter?",
                      @"---",
                      @"See subject."];
    std::string bodystr = [[body componentsJoinedByString:@"\n"] UTF8String];
    std::istringstream ss(bodystr);
    boost::regex pat("^Subject: (RE: |Aw: )*(.*)");
    std::string line;
    while (!ss.eof()) {
        std::getline(ss, line);
        boost::smatch matches;
        if (boost::regex_match(line, matches, pat)) {
            std::cout << matches[2] << std::endl;
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
