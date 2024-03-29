//
//  AppDelegate.m
//  Ratings
//
//  Created by ido franindo on 3/6/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayerViewController.h"

@implementation AppDelegate{
    NSMutableArray* players;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    players = [NSMutableArray arrayWithCapacity:20];
    Player *player = [[Player alloc] init];
    player.name = @"test 1";
    player.game = @"tic-tac-toe";
    player.rating = 4;
    [players addObject:player];
    player = [[Player alloc] init];
    player.name = @"john 2";
    player.game = @"chess master";
    player.rating = 3;
    [players addObject:player];
    player = [[Player alloc] init];
    player.name = @"brck 3";
    player.game = @"angry pig";
    player.rating =5;
    [players addObject:player];
    
    UITabBarController *tabBarController =  (UITabBarController *)self.window.rootViewController;
	UINavigationController *navigationController =
    [[tabBarController viewControllers] objectAtIndex:0];
	PlayerViewController *playersViewController =
    [[navigationController viewControllers] objectAtIndex:0];
	playersViewController.players = players;
    
    // Override point for customization after application launch.
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
