//
//  ViewController.m
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
//同步属性和成员变量
@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _mySwitch = [[UISwitch alloc] init];
    //    X,Y的值可以改变 宽度和高度无法改变
    _mySwitch.frame = CGRectMake(20, 20, 80, 40);
    _mySwitch.backgroundColor = [UIColor lightGrayColor];
    _mySwitch.tintColor=[UIColor redColor];
    _mySwitch.thumbTintColor=[UIColor yellowColor];
    //    z开关状态设置属性
    _mySwitch.on = YES;
    //    也可以使用set函数
    [_mySwitch setOn:YES];
    //    设置开关状态和是否开启动画效果
    [_mySwitch setOn:NO animated:NO];
    [self.view addSubview:_mySwitch];
    [_mySwitch setOnTintColor:[UIColor blueColor]];
    //    向开关添加事件函数
    //    P1:函数实现对象
    //P2:函数对象
    //P3:事件响应时的事件类型UIControlEventValueChanged 状态发生变化时出发此函数
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
}
//参数传入开关对象本身
-(void)swChange:(UISwitch*) sw{
    NSLog(@"开关状态发生变化");
//    on表示f当前结束的状态
    if(sw.on == YES){
        NSLog(@"开关被打开");
    }else{
        NSLog(@"开关被关闭");
    }
    
}
@end
