//
//  AppDelegate.m
//  MyApp
//
//  Created by 匿名用户的笔记本 on 2021/9/9.
//  Copyright © 2021 匿名用户的笔记本. All rights reserved.
//

#import "AppDelegate.h"
#import "MyAppRootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    self.uiwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [_uiwindow setBackgroundColor:[UIColor whiteColor]];
    MyAppRootViewController *rootVc = [[MyAppRootViewController alloc] init];
    rootVc.view.frame = [UIScreen mainScreen].bounds;
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:rootVc];
    self.uiwindow.rootViewController = self.navigationController;
    [self.uiwindow makeKeyAndVisible];
}



@end
