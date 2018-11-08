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
//    开关两种状态
//    所有UIKit框架库中的控件均已UI开头
//    苹果官方的控件都定义在UIKit框架中
    UISwitch* _mySwitch;
}

@property (retain,nonatomic) UISwitch* mySwitch;

@end

