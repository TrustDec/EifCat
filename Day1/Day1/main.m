//
//  main.m
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//整个App程序的主函数，入口函数
int main(int argc, char * argv[]) {
//    自动内存释放h池
    @autoreleasepool {
//        UIKit框架结构的启动函数
//        参数一：argc,启动时带有参数的个数
//          参数二：argv，参数列表
//        参数三：要求传入一个主框架类类名，如果参数为nil,系统会自动默认的框架作为主框架类名
//        参数四：竹筐假的代理名字
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
