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
    AlertWindowypeError ,
    AlertWindowTypeMessage ,
};


@interface AlertWindow : UIView

@property(nonatomic,assign) AlertWindowType type;

-(instancetype)init;
-(void)showAlertWindowMessage:(NSString *)title alertType:(AlertWindowType)type;
-(void)show;
-(void)dismiss;

@end
