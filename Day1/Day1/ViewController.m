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
- (void) onPress:(UIButton*) btn {
    if (btn.tag == 100) {
        NSLog(@"btn pressed");
    }
    if (btn.tag == 101) {
        NSLog(@"img");
    }
}
- (void) createUI {
    UILabel* label = [[UILabel alloc] init];
    label.text = @"Hello,OC,My Name is Small Rui";
    label.textColor = [UIColor greenColor];
    label.frame = CGRectMake(100,30,150,60);
    label.backgroundColor = [UIColor grayColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor blueColor];
    label.shadowColor = [UIColor grayColor];
    label.shadowOffset = CGSizeMake(3,3);
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    
}
- (void) createUIRectButton{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100,100,100,30);
    [btn setTitle:@"按钮01" forState: UIControlStateNormal];
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    btn.backgroundColor = [UIColor brownColor];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setTintColor:[UIColor whiteColor]];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    btn.tag = 100;
}

- (void) createImagebtn{
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 140, 50, 80);
    UIImage* icon01 = [UIImage imageNamed:@"Trust.jpg"];
    UIImage* icon02 = [UIImage imageNamed:@"cxm.jpeg"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [btnImage addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnImage];
    btnImage.tag = 101;
}
- (void) createView {
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 200, 100, 100);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    view.alpha = .5;
    view.hidden = NO;
    view.opaque = NO; // set is show transparent
    [view removeFromSuperview]; // 讲自己从父视图rm 
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
    [self createUIRectButton];
    [self createImagebtn];
    [self createView];
    NSLog(@"我拍死了Xcode");
}


@end
