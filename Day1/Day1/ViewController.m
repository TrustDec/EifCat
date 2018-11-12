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

@synthesize slider = _slider;
@synthesize pView = _progreessView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    进度条的创建
    _progreessView = [[UIProgressView alloc] init];
    //    进度条的高度是不可变化的
    _progreessView.frame= CGRectMake(50, 100, 200, 40);
    //    设置进度条的风格颜色值
    _progreessView.progressTintColor = [UIColor redColor];
    _progreessView.trackTintColor=[UIColor blueColor];
    //    设置范围进度风格颜色值
    //    范围0~1
    _progreessView.progress =0.6;
    //    设置进度条风格特征
    _progreessView.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview:_progreessView];
    _slider = [[UISlider alloc]init];
    _slider.frame = CGRectMake(10, 200, 300, 40);
    //    set max value
    _slider.maximumValue=100;
    //    set min value
    _slider.minimumValue=-1000;
    //    set slider 滑块位置(float值)
    _slider.value = 60;
    //    set 滑块颜色
    _slider.thumbTintColor=[UIColor redColor];
    //    _slider.backgroundColor=[UIColor grayColor];
    //    左侧滑条背景颜色
    _slider.minimumTrackTintColor=[UIColor greenColor];
    //    右侧滑条背景颜色
    _slider.maximumTrackTintColor=[UIColor yellowColor];
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
    
}

-(void) pressSlider {
    _progreessView.progress =(_slider.value-_slider.minimumValue)/(_slider.maximumValue-_slider.minimumValue);
    NSLog(@"value=%f",_slider.value);
}
@end
