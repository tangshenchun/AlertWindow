//
//  AlertWindow.m
//  UIDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import "AlertWindow.h"
#import "UIColor+Tools.h"

#define ALERTWINDOW_HEIGHT 64
#define IMAGE_WIDTH 30
#define IMAGE_HEIGHT 30
#define IMAGE_CENTER_X 25
#define IMAGE_CENTER_Y 40
#define TIPS_HEIGHT 40
#define TIPS_FONT_SIZE 16.0F

@interface AlertWindow ()


@property (nonatomic,assign) AlertWindowType alertType;
@property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UILabel * tipsLabel;

@end

@implementation AlertWindow

-(instancetype)init {

    if (self = [super init]) {
        
        self.frame = CGRectMake(0, -ALERTWINDOW_HEIGHT, [[UIScreen mainScreen] bounds].size.width, ALERTWINDOW_HEIGHT);
        
        [self addSubview:self.imageView];
        [self addSubview:self.tipsLabel];

        [UIView transitionWithView:self
                          duration:0.25
                           options:0
                        animations:^{
                            self.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, ALERTWINDOW_HEIGHT/2);
                        }
                        completion:^(BOOL finished) {
                            [self performSelector:@selector(removeAlertWindow) withObject:nil afterDelay:2.5];
                        }];
        
    }
    return self;
}

-(void)showAlertWindowMessage:(NSString *)title alertType:(AlertWindowType)type {
    
    self.tipsLabel.text = title;
    switch (type) {
        case AlertWindowTypeSuccess:
            self.imageView.image = [UIImage imageNamed:@"success.png"];
            self.backgroundColor = [UIColor colorWithHexString:@"#B0C4DE"];
            self.tipsLabel.textColor = [UIColor colorWithHexString:@"#1296db"];
            break;
        case AlertWindowypeError:
            self.imageView.image = [UIImage imageNamed:@"error.png"];
            self.backgroundColor = [UIColor colorWithHexString:@"#EE7942"];
            self.tipsLabel.textColor = [UIColor colorWithHexString:@"#ffffff"];
            break;
        default:
            break;
    }

}

#pragma mark 点击视图操作
-(void)removeAlertWindow {
    [self dismiss];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismiss];
}

#pragma mark 左侧icon
-(UIImageView *)imageView {

    if (!_imageView) {
        
        _imageView = [[UIImageView alloc] init];
        _imageView.frame = CGRectMake(0, 0, IMAGE_WIDTH, IMAGE_HEIGHT);
        _imageView.center = CGPointMake(IMAGE_CENTER_X, IMAGE_CENTER_Y);
    }

    return _imageView;
}

-(UILabel*)tipsLabel {

    if (!_tipsLabel) {
        
        _tipsLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 20, [[UIScreen mainScreen] bounds].size.width-45, TIPS_HEIGHT)];
        _tipsLabel.numberOfLines = 2;
        _tipsLabel.textAlignment = NSTextAlignmentLeft;
        _tipsLabel.font = [UIFont systemFontOfSize:TIPS_FONT_SIZE];
    }
    return _tipsLabel;
}

#pragma mark 显示
-(void)show {

    [UIView animateWithDuration:0.5f
                          delay:0
         usingSpringWithDamping:0.9f
          initialSpringVelocity:10.0f
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.center = CGPointMake(self.center.x, ALERTWINDOW_HEIGHT/2);
                     } completion:^(BOOL finished) {
                         
                     }];

}


#pragma mark 移除
-(void)dismiss {

    [UIView animateWithDuration:0.5f
                          delay:0
         usingSpringWithDamping:0.9f
          initialSpringVelocity:6.0f
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.center = CGPointMake(self.center.x, -ALERTWINDOW_HEIGHT/2);
                     } completion:^(BOOL finished) {
                         [self removeFromSuperview];
                     }];

}

@end
