//
//  MyAvatarView.h
//  自定义视图
//
//  Created by 陈辉金 on 2020/6/12.
//  Copyright © 2020 chj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyAvatarView : UIView

//头像的位置和大小
@property (nonatomic, assign) CGRect avatarRect;
//数值的位置和大小
@property (nonatomic, assign) CGRect topValueRect;

/// 边框和头像
/// @param avaImageName 头像
/// @param borderImageName 边框视图
- (void)layoutMainViewForCrown:(NSString *)avaImageName BorderImage:(NSString *)borderImageName;

/// 边框、头像、数值
/// @param avaImageName 头像
/// @param borderImageName 边框视图
/// @param topValue top的数值
/// @param font 字体大小
- (void)layoutMainViewWithTopValue:(NSString *)avaImageName BorderImage:(NSString *)borderImageName TopValue:(NSString *)topValue TopValueFont:(NSInteger)font TopValueColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
