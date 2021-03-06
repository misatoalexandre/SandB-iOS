//
//  AppDelegate.m
//  SandB-iOS
//
//  Created by Lea Marolt on 1/25/13.
//  Copyright (c) 2013 Grinnell AppDev. All rights reserved.
//

#import "AppDelegate.h"

#import "NewsViewController.h"
#import "SportsViewController.h"
#import "CommunityViewController.h"
#import "OpinionViewController.h"
#import "ArtsViewController.h"

@implementation AppDelegate
@synthesize window, tabBarController, navController1, navController2, navController3, navController4, navController5;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *viewController1, *viewController2, *viewController3, *viewController4, *viewController5;
    
    // Commenting out ipad specific xib loading
    // if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
    viewController1 = [[NewsViewController alloc] initWithNibName:@"NewsViewController"
                                                            bundle:nil];
    navController1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    
    viewController2 = [[SportsViewController alloc] initWithNibName:@"SportsViewController"
                                                             bundle:nil];
    navController2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
    
    viewController3 = [[CommunityViewController alloc] initWithNibName:@"CommunityViewController"
                                                                bundle:nil];
    navController3 = [[UINavigationController alloc] initWithRootViewController:viewController3];
    
    viewController4 = [[OpinionViewController alloc] initWithNibName:@"OpinionViewController"
                                                              bundle:nil];
    navController4 = [[UINavigationController alloc] initWithRootViewController:viewController4];
    
    viewController5 = [[ArtsViewController alloc] initWithNibName:@"ArtsViewController"
                                                           bundle:nil];
    navController5 = [[UINavigationController alloc] initWithRootViewController:viewController5];
    // }
    /*else {
     viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController_iPad" bundle:nil];
     viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPad" bundle:nil];
     }*/
    self.tabBarController = [[UITabBarController alloc] init];
    NSArray *viewsArray = [[NSArray alloc] initWithObjects:navController1, navController2, navController3, navController4, navController5, nil];
    self.tabBarController.viewControllers = viewsArray;
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    // Make things red
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:142.0f/255.0f green:42.0f/255.0f blue:29.0f/255.0f alpha:1.0f]];
    
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

/*
 // Optional UITabBarControllerDelegate method.
 - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
 {
 }
 */

/*
 // Optional UITabBarControllerDelegate method.
 - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
 {
 }
 */

-(NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window

{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        return UIInterfaceOrientationMaskAll;
    else  /* iphone */
        return UIInterfaceOrientationMaskPortrait;
}

@end
