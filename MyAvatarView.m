//
//  MyAvatarView.m
//  自定义视图
//
//  Created by 陈辉金 on 2020/6/12.
//  Copyright © 2020 chj. All rights reserved.
//

#import "MyAvatarView.h"
//#import "UIImageView+WebCache.h"

@interface MyAvatarView ()

@property (nonatomic, strong) UIImageView *avaImageView;

@property (nonatomic, strong) UIImageView *borderImageView;

@property (nonatomic, strong) UILabel *topValueLabel;

@end

@implementation MyAvatarView
#pragma mark -Actions

/// 边框和头像
/// @param avaImageName 头像
/// @param borderImageName 边框视图
- (void)layoutMainViewForCrown:(NSString *)avaImageName BorderImage:(NSString *)borderImageName {

//    [self.avaImageView sd_setImageWithURL:[NSURL URLWithString:avaImageName] placeholderImage:[UIImage imageNamed:@"User_Placeholder"]];
    self.avaImageView.image = [UIImage imageNamed:avaImageName];
    self.borderImageView.image = [UIImage imageNamed:borderImageName];
    
}

/// 边框、头像、数值
/// @param avaImageName 头像
/// @param borderImageName 边框视图
/// @param topValue top的数值
/// @param font 字体大小
- (void)layoutMainViewWithTopValue:(NSString *)avaImageName BorderImage:(NSString *)borderImageName TopValue:(NSString *)topValue TopValueFont:(NSInteger)font TopValueColor:(UIColor *)color{

//    [self.avaImageView sd_setImageWithURL:[NSURL URLWithString:avaImageName] placeholderImage:[UIImage imageNamed:@"User_Placeholder"]];
    self.avaImageView.image = [UIImage imageNamed:avaImageName];
    self.borderImageView.image = [UIImage imageNamed:borderImageName];
    self.topValueLabel.text = topValue;
    self.topValueLabel.font = [UIFont systemFontOfSize:font];
    self.topValueLabel.textColor = color;
}

#pragma mark -懒加载

- (UIImageView *)avaImageView {
    if (!_avaImageView) {
        _avaImageView = [[UIImageView alloc] initWithFrame:self.avatarRect];
        _avaImageView.layer.cornerRadius = self.avatarRect.size.width / 2;
        _avaImageView.layer.masksToBounds = YES;
        [self addSubview:_avaImageView];
    }
    return _avaImageView;
}

- (UIImageView *)borderImageView {
    if (!_borderImageView) {
        _borderImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:_borderImageView];
    }
    return _borderImageView;
}

- (UILabel *)topValueLabel {
    if (!_topValueLabel) {
        _topValueLabel = [[UILabel alloc] initWithFrame:self.topValueRect];
        _topValueLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_topValueLabel];
    }
    return _topValueLabel;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
