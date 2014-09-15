//
//  AppDelegate.m
//  TableViewPullDownToSearch
//
//  Created by Ethan Neff on 9/15/14.
//  Copyright (c) 2014 ethanneff. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}
							

@end
