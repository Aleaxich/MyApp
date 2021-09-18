//
//  main.m
//  MyApp
//
//  Created by 匿名用户的笔记本 on 2021/9/9.
//  Copyright © 2021 匿名用户的笔记本. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
