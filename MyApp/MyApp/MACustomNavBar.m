//
//  UIViewController+MACustomNavBar.m
//  MyApp
//
//  Created by 匿名用户的笔记本 on 2021/9/17.
//  Copyright © 2021 匿名用户的笔记本. All rights reserved.
//

#import <objc/runtime.h>
#import "MACustomNavBar.h"

static const CGFloat MACustomNavBarHeight = 40;



@interface MACustomNavBar()

@property(nonatomic, strong) UILabel *textLabel;
@property(nonatomic, strong) UIButton *leftButton;
@property(nonatomic, strong) UIButton *rightButton;

@end

@implementation MACustomNavBar

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setTitle:(NSString *)title {
    self.textLabel.text = title;
}

- (void)addLeftCloseButtonWhenTapped:(void(^)(void))tapAction {
    
}

@end

@implementation UIViewController (MACustomNavBar)

-(MACustomNavBar *)ma_mACustomNavBar {
    return objc_getAssociatedObject(self,_cmd);
}

- (void)ma_setMACustomBarStyle:(MACustomNavBar *)bar {
    objc_setAssociatedObject(self, @selector(ma_mACustomNavBar), bar, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (void)ma_InstallCustomBarStyle:(MACustomBarStyle)barstyle
                     buttonStyle:(MACustomLeftButtonStyle)buttonStyle {
    MACustomNavBar *navBar = [[MACustomNavBar alloc] init];
    [self.view addSubview:navBar];
    
    
}

@end
