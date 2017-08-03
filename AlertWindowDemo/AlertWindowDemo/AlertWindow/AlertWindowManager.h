//
//  AlertWindowManager.h
//  UIDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertWindow.h"


typedef void (^SelectedAlertWindow)();

@interface AlertWindowManager : NSObject


//@property(nonatomic,strong) AlertWindow * _Nullable alertWindow;

+(AlertWindowManager*_Nullable)shareManager;

-(void)showWithAlertWindowTitle:(NSString *_Nullable)title alertType:(AlertWindowType)type didSelectedAlertViewWithBlock:(SelectedAlertWindow _Nullable)didselectedAlertViewBlock;



@end
