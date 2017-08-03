//
//  AlertWindowManager.m
//  UIDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import "AlertWindowManager.h"

@implementation AlertWindowManager

+(AlertWindowManager*)shareManager {
    
    static AlertWindowManager * shareManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        shareManager = [[AlertWindowManager alloc] init];
        //shareManager.alertWindow = [[AlertWindow alloc] init];
        //shareManager.alertWindow.userInteractionEnabled = YES;
    });
    return shareManager;
}

-(void)showWithAlertWindowTitle:(NSString *)title alertType:(AlertWindowType)type didSelectedAlertViewWithBlock:(SelectedAlertWindow)didselectedAlertViewBlock {

    dispatch_async(dispatch_get_main_queue(), ^{
       
        AlertWindow * alertWindow = [[AlertWindow alloc] init];
        alertWindow.userInteractionEnabled = YES;
        [[UIApplication sharedApplication].keyWindow addSubview:alertWindow];
        [alertWindow showAlertWindowMessage:title alertType:type];
        [alertWindow show];
    });
}

@end
