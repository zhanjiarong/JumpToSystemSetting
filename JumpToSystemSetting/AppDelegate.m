//
//  AppDelegate.m
//  JumpToSystemSetting
//
//  Created by BoYun on 15/7/17.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//

#import "AppDelegate.h"
#import "SettingModel.h"
#import "MainTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     NOTE: 跳转到设置里的某一项，有几项不知道怎么跳，以后有机会发现了再更新到工程里。
     
     1.在app的target中的设置Info里的URL Types添加一个URL Scheme：prefs
     
     2.然后如下调用,可以先判断一下是否能打开
     NSURL *url = [NSURL URLWithString:@"prefs:root=WIFI"];
     if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
     }
     */
    NSArray *settings = @[
                          [SettingModel settingWithName:@"About" prefs:@"prefs:root=General&path=About"],
                          [SettingModel settingWithName:@"Accessibility" prefs:@"prefs:root=General&path=ACCESSIBILITY"],
                          [SettingModel settingWithName:@"Auto-Lock" prefs:@"prefs:root=General&path=AUTOLOCK"],
                          [SettingModel settingWithName:@"Bluetooth" prefs:@"prefs:root=Bluetooth"],
                          [SettingModel settingWithName:@"Date & Time" prefs:@"prefs:root=General&path=DATE_AND_TIME"],
                          [SettingModel settingWithName:@"FaceTime" prefs:@"prefs:root=FACETIME"],
                          [SettingModel settingWithName:@"General" prefs:@"prefs:root=General"],
                          [SettingModel settingWithName:@"Keyboard" prefs:@"prefs:root=General&path=Keyboard"],
                          [SettingModel settingWithName:@"iCloud" prefs:@"prefs:root=CASTLE"],
                          [SettingModel settingWithName:@"iCloud Storage & Backup" prefs:@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP"],
                          [SettingModel settingWithName:@"International" prefs:@"prefs:root=General&path=INTERNATIONAL"],
                          [SettingModel settingWithName:@"Location Services" prefs:@"prefs:root=LOCATION_SERVICES"],
                          [SettingModel settingWithName:@"Music" prefs:@"prefs:root=MUSIC"],
                          [SettingModel settingWithName:@"Notes" prefs:@"prefs:root=NOTES"],
                          [SettingModel settingWithName:@"Notification" prefs:@"prefs:root=NOTIFICATIONS_ID"],
                          [SettingModel settingWithName:@"Phone" prefs:@"prefs:root=Phone"],
                          [SettingModel settingWithName:@"Photos" prefs:@"prefs:root=Photos"],
                          [SettingModel settingWithName:@"Profile" prefs:@"prefs:root=General&path=ManagedConfigurationList"],
                          [SettingModel settingWithName:@"Reset" prefs:@"prefs:root=General&path=Reset"],
                          [SettingModel settingWithName:@"Safari" prefs:@"prefs:root=Safari"],
                          [SettingModel settingWithName:@"Siri" prefs:@"prefs:root=General&path=SIRI"],
                          [SettingModel settingWithName:@"Sounds" prefs:@"prefs:root=Sounds"],
                          [SettingModel settingWithName:@"Software Update" prefs:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"],
                          [SettingModel settingWithName:@"Store" prefs:@"prefs:root=STORE"],
                          [SettingModel settingWithName:@"Twitter" prefs:@"prefs:root=TWITTER"],
                          [SettingModel settingWithName:@"Usage" prefs:@"prefs:root=General&path=USAGE"],
                          [SettingModel settingWithName:@"VPN" prefs:@"prefs:root=General&path=VPN"],
                          [SettingModel settingWithName:@"Wallpaper" prefs:@"prefs:root=Wallpaper"],
                          [SettingModel settingWithName:@"Wi-Fi" prefs:@"prefs:root=WIFI"]
                          ];
    
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    MainTableViewController *mainVC = navigationController.viewControllers[0];
    mainVC.settings = settings;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
