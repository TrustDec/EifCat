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
@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _stepper = [[UIStepper alloc]init];
    //    设置位置 宽高不能变
    _stepper.frame = CGRectMake(100, 50, 80, 40);
    //    set 步进器 最小值
    _stepper.minimumValue = 0;
    //    set 步进器 最大值
    _stepper.maximumValue = 15;
    //    set当前值
    _stepper.value = 0;
    //    set 步进器每次向前或向后步进的步伐值
    _stepper.stepValue = 5;
    //    是否可以重复响应事件操作
    _stepper.autorepeat = YES;
    //    是否将步进器结果o通过事件函数响应出来
    _stepper.continuous = YES;
    //    添加事件函数
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_stepper];
    _segControl = [[UISegmentedControl alloc]init];
    //    set 控件位置,宽度可变 高度不可变
    _segControl.frame=CGRectMake(10, 100, 300, 40);
    //    添加一个按钮元素
    //    按钮选项文字
    //    P2:按钮的索引位置
    //    P3:是否有动画效果
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:YES];
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:YES];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:YES];
    [_segControl insertSegmentWithTitle:@"15元" atIndex:3 animated:YES];
    _segControl.selectedSegmentIndex = 0;
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segControl];
}

-(void)stepChange{
    _segControl.selectedSegmentIndex = _stepper.value/5;
    NSLog(@"step press! value=%f",_stepper.value);
}
-(void)segChange{
    
    NSLog(@"%ld",_segControl.selectedSegmentIndex);
}
@end
