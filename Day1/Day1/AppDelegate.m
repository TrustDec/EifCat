//
//  AppDelegate.m
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
//当程序框架初始化成功后t调用此函数
//次函数用来初始化整个程序框架结构
//整个程序对ios开发工程师的入口函数

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    创建一个UIWWindow对象
//    整个程序中只有一个UIWindowdui对象
//    在程序基本上表示屏幕窗口
//    UIWindow也是集成于UIView
//    UIWindow是一个特殊的UIView
//    UIScreen表示屏幕硬件表示类
//    mainScreen获得主屏幕设备信息
//    bounds表示屏幕的宽高值
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    创建一个视图控制器做为UIWindowd跟视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
//    设置背景颜色
    self.window.backgroundColor = [UIColor blueColor];
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor orangeColor];
//    背景视图
    UIView* backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 240, 360)];
    backView.backgroundColor = [UIColor greenColor];
//    将backView做为view的父亲视图
//    子视图的坐标是参照父亲视图的坐标系
//    当父亲视图移动时，所有的子视图都会移动
    [backView addSubview:view];
    [self.window addSubview:backView];
//    b每一个View都有一个window属性
    view.window;
    backView.window;
//    使window有效并显示到屏幕上
    [self.window makeKeyAndVisible];
    NSLog(@"%@",view.window);
    NSLog(@"%@",backView.window);
    NSLog(@"%@",self.window);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
