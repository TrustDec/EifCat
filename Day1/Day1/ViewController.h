//
//  ViewController.h
//  Day1
//
//  Created by Small Rui on 2018/10/26.
//  Copyright © 2018 Small Rui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //    定义步骤器
    //    按照一定的数字来调整某个数据
    UIStepper* _stepper;
    //    分栏控制器定义
    UISegmentedControl* _segControl;
    
    
}
@property (retain,nonatomic) UIStepper* stepper;
@property(retain,nonatomic) UISegmentedControl* segControl;

@end

