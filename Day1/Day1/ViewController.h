//
//  ViewController.h
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //    定义一个定时器对象
    //    可以在每个固定的时间发送一个消息
    //    通过此消息来调用相应的函数
    //通过次函数可在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timeView;
    
}
//定时器的属性对象
@property (retain,nonatomic) NSTimer* timerView;

@end

