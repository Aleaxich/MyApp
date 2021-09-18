//
//  UIViewController+__MACustomNavBar.h
//  MyApp
//
//  Created by 匿名用户的笔记本 on 2021/9/17.
//  Copyright © 2021 匿名用户的笔记本. All rights reserved.
//

@import UIKit;



typedef NS_ENUM(NSInteger,MACustomBarStyle) {
    ///默认颜色
    MACustomBarStyleDefault,
    ///白色背景黑色 字体
    MACustomBarStyleWhite
};

typedef NS_ENUM(NSInteger,MACustomLeftButtonStyle) {
    ///左侧关闭按钮
    MACustomLeftButtonStyleClose,
    ///左侧回退按钮
    MACustomLeftButtonStyleBack,
    ///左侧没有按钮
    MACustomLeftButtonStyleNone
};

@interface MACustomNavBar : UIView;

///获取标题
@property(nonatomic, strong, readonly) UILabel *textLabel;

///设置标题
- (void)setTitle:(NSString *)title;

///添加左侧关闭按钮点击动作
- (void)addLeftCloseButtonWhenTapped:(void(^)(void))tapAction;


@end


@interface UIViewController (MACustomNavBar)

- (void)ma_InstallCustomBarStyle:(MACustomBarStyle)barstyle
                     buttonStyle:(MACustomLeftButtonStyle)buttonStyle;

@end


