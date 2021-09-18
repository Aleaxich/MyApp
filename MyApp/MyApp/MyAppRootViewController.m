//
//  MyAppRootViewController.m
//  MyApp
//
//  Created by 匿名用户的笔记本 on 2021/9/12.
//  Copyright © 2021 匿名用户的笔记本. All rights reserved.
//

@import Foundation;
#import "MyAppRootViewController.h"

@interface MyAppRootViewController()

@property(nonatomic, assign)BOOL colorFlag;

@end

@implementation MyAppRootViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpsubviews];
   }
    return self;
}

- (void)setUpsubviews {
    [self.view setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:self.button];
}



 
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//
//    [self.navigationController setNavigationBarHidden:NO animated:animated];
//}

#pragma mark setter and getter

- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 30)];
        [_button setTitle:@"Test" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(changrBackGroundColor) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

#pragma mark private methods

- (void)changrBackGroundColor {
    if (self.colorFlag == false) {
    self.colorFlag = true;
    [self.view setBackgroundColor:[UIColor redColor]];
    } else {
    self.colorFlag = false;
    [self.view setBackgroundColor:[UIColor blueColor]];
    }
}

@end



