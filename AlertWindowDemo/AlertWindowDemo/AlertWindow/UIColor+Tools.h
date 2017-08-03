//
//  UIColor+Tools.h
//  UIDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Tools)

//RGB
+ (UIColor *)colorWithRealRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

/**
 十六进制颜色编码设置

 @param color 十六进制颜色编码字符串
 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;


/**
 十六进制颜色编码设置

 @param color 十六进制颜色编码字符串
 @param alpha 0~1
 @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end
