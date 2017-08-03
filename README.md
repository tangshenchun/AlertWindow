# AlertWindow
自定义屏幕顶部弹出视图

![image](http://code.cocoachina.com/uploads/attachments/20170721/135625/8224ef10ff43d2ce71fee1526ca6066f.gif)

## 介绍

使用自定义视图是时，只需要添加头文件：

    #import "AlertWindowManager.h"


## 调用方法

    [[AlertWindowManager shareManager] showWithAlertWindowTitle:@"请求成功!" alertType:AlertWindowTypeSuccess didSelectedAlertViewWithBlock:nil];