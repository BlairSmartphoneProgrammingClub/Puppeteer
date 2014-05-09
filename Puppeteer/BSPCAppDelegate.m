//
//  BSPCAppDelegate.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCAppDelegate.h"
#import "BSPCFace.h"

@implementation BSPCAppDelegate


#define GAP_SIZE 20         //Height of the top bar
#define IMAGE_SIZE 320-3*GAP_SIZE      //the width of the screen minus GAP_SIZE on the left, right, and middle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSMutableArray *faces = [[NSMutableArray alloc] initWithCapacity:10];
    
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Faces" ofType:@"plist"]];
    
    for(NSString *key in dict) {
        
    }
    
    //adding objects to faces will finally finish around here I guess
    
    for(int i=0;i<[faces count];i++) {
        BSPCFace *face = [faces objectAtIndex:i];
        UIImageView *view = [[UIImageView alloc] initWithImage:face.pic];
        
        UITapGestureRecognizer *gestRec = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
        [view addGestureRecognizer:gestRec];
        
        view.frame = CGRectMake(20+(150 * (i%2)), 20+150*i, IMAGE_SIZE, IMAGE_SIZE);
        
        view.tag = i;
    }
    
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
