//
//  ViewController.m
//  AlertWindowDemo
//
//  Created by tangshenchun on 2017/8/3.
//  Copyright © 2017年 tangshenchun. All rights reserved.
//

#import "ViewController.h"
#import "AlertWindowManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [[AlertWindowManager shareManager] showWithAlertWindowTitle:@"请求成功!" alertType:AlertWindowTypeSuccess didSelectedAlertViewWithBlock:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
