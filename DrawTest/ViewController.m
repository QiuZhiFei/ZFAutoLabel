//
//  ViewController.m
//  DrawTest
//
//  Created by mac on 11/10/14.
//  Copyright (c) 2014 (zhifei - qiuzhifei521@gmail.com). All rights reserved.
//

#import "ViewController.h"
#import "ZFAutoLabel.h"

@interface ViewController ()
{
    ZFAutoLabel * label;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    label = [[ZFAutoLabel alloc]
                                 initWithFrame:CGRectMake(0, 100, 300, 400)];
    label.backgroundColor = [UIColor yellowColor];
    label.linesSpacing = 20;
    label.characterSpacing = 10;
    label.font = [UIFont boldSystemFontOfSize:15];
    label.text = @"我只是作为一个demo里的语句才会出现的，我这里不表达任何意思，什么都不想表达，真的不想表达";
    [self.view addSubview:label];
    
    
    // 动态高度
    [label autoSizeToFit];
    
    // 文字扩展
    [label addAttribute:(id)kCTForegroundColorAttributeName
                  value:[UIColor blueColor]
                  range:NSMakeRange(30, 10)];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // label 展示后，点击，也可以改变效果
    [label addAttribute:(id)kCTForegroundColorAttributeName
                  value:[UIColor redColor]
                  range:NSMakeRange(10, 10)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
