//
//  AlertWindow.h
//  UIDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS (NSUInteger ,AlertWindowType) {
    AlertWindowTypeSuccess = 0,
    AlertWindowypeError = 1 << 0,
    AlertWindowTypeMessage = 1 << 1,
};


@interface AlertWindow : UIView

@property(nonatomic,assign) AlertWindowType type;

-(instancetype)init;
-(void)showAlertWindowMessage:(NSString *)title alertType:(AlertWindowType)type;
-(void)show;
-(void)dismiss;

@end
