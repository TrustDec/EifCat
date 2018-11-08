//
//  ViewController.m
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"
@interface ViewController ()

@end


@implementation ViewController
@synthesize timerView = _timeView;
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //    创建试图控制器2
    ViewC02* vc = [[ViewC02 alloc] init];
    //    显示一个新的试图控制器在屏幕上
    //    P1:新的视图控制器对象
    //    P2:使用动画切换效果
    //    P3:切换结束后功能调用 不需要传nil即可
    [self presentViewController:vc animated:YES completion:nil];
}
//只加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad! 第一次加载视图");
    //    启动定时器按钮
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    //    停止定时器按钮
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnStop];
    //    创建定时移动的View
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(0,0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    //    设置view的标签值
    //    通过父亲d视图对象以及view的标签值可以获得响应的f对象
    view.tag = 101;
    
}
//按下开始按钮
-(void) pressStart{
    //NSTimer的类方法创建一个定时器并启动这个定时器
    //    P1:每个多长时间调用定时器函数,以秒为单位
    //    P2:表示实现定时器函数的对象(指针)
    //    P3:定时器函数对象
    //    P4:可以定时器函数中传入参数,无参数可以传nil
    //    P5:定时器是否重复操作,YES为重复,No只完成一次函数调用
    //    返回值为一个新建好的定时器对象
    _timeView = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(updateTimer:) userInfo:@"Trust" repeats:YES];
}

//定时器函数
//可以将定时器本身作为参数传入
-(void) updateTimer:(NSTimer*) timer
{
    NSLog(@"Smallrui name = %@",timer.userInfo);
    UIView* view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x+.5, view.frame.origin.y+.5, 80, 80);
    
}
//按下停止按钮
-(void) pressStop{
    if(_timeView !=nil){
        //        停止定时器
        [_timeView invalidate];
    }
}
//
//当视图控制器的视图即将显示时，调用此函数
//视图分为:1.显示前(不显示) 2.正在处于显示状态 3:显示被隐藏
//参数:i表示是否用动画切换后显示
//每一次视图显示都要调用
-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear! 视图即将显示");
}
//视图即将消失时，调用此函数
//参数:i表示是否用动画切换后显示
-(void) viewWillDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear! 视图即将消失");
}
//当视图已经显示到屏幕后的瞬间调用此函数
//参数:i表示是否用动画切换后显示
-(void) viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear! 视图已经显示");
}
//当视图已经消失从屏幕上
//参数:i表示是否用动画切换后显示
-(void) viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear! 视图已经消失");
}
@end
