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
//    进度条对象
//    一般用来表示下载或视频播放进度
    UIProgressView* _progreessView;
    
//    滑动条的定义
//    一般用来进行调整音乐的音量等
    UISlider* _slider;
}

@property (retain,nonatomic) UIProgressView* pView;
@property (retain,nonatomic) UISlider* slider;
@end

