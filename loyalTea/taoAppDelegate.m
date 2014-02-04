//
//  taoAppDelegate.m
//  loyalTea
//
//  Created by Tom Berman on 31/01/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import "taoAppDelegate.h"
#import "Cafe.h"
#import "CafeViewController.h"

@implementation taoAppDelegate

//    NSMutableArray *_cafes;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
//    NSMutableArray *_cafes = [NSMutableArray arrayWithCapacity:20];
//    
//    Cafe *player = [[Cafe alloc] init];
//    player.name = @"Costa Coffee";
//    player.desc = @"Coffee from ... ";
////    [player.stamps initWithInt:2];
////    player.stamps = 4;
//    player.img = @"costa.jpeg";
//    [_cafes addObject:player];
//    
//    player = [[Cafe alloc] init];
//    player.name = @"Cafe Nero";
//    player.desc = @"Its ok";
////    [player.stamps initWithInt:3];
////    player.stamps = 5;
//    player.img = @"cafeNero.jpeg";
//    [_cafes addObject:player];
//    
//    player = [[Cafe alloc] init];
//    player.name = @"Starbucks";
//    player.desc = @"Biggest Coffee";
////    [player.stamps initWithInt:4];
////    player.stamps = 2;
//    player.img = @"starbucks.jpeg";
//    [_cafes addObject:player];
    
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"Cafe.sqlite"];
    
    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    
//    [Cafe MR_truncateAll];
    
    NSArray *tstCafe = [Cafe MR_findByAttribute:@"cafeId" withValue:@"1"];
    
    
    if(!tstCafe || !tstCafe.count){
        
        NSLog(@"No record found - adding Cafe");
    Cafe *costa = [Cafe MR_createInContext:localContext];
    costa.name=@"Costa";
    costa.desc=@"A chain coffee shop";
    costa.cafeId = [NSNumber numberWithInt:1];
    costa.img=@"costa.jpeg";
    [localContext MR_saveToPersistentStoreAndWait];
    }
    else{
        NSLog(@"Record found - no new Cafe created");
    }
    
//    Potential for Loading new Data
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][1];
    CafeViewController *cafesViewController = [navigationController viewControllers][0];
    cafesViewController.cafes = [Cafe MR_findAll];
//
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
    [MagicalRecord cleanUp];
}

@end
