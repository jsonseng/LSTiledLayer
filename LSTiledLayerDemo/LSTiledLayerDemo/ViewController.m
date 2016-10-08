//
//  ViewController.m
//  LSTiledLayerDemo
//
//  Created by ZhengWenQiang on 2016/9/30.
//  Copyright © 2016年 jsonseng. All rights reserved.
//

#import "ViewController.h"
#import "LSTIledView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    [self.view addSubview:scrollView];
    
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSString *horizonalStr = @"H:|-0-[scrollView]-0-|";
    NSString *verticalStr  = @"V:|-0-[scrollView]-0-|";
    NSDictionary *viewDic  = NSDictionaryOfVariableBindings(scrollView);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:horizonalStr options:0 metrics:nil views:viewDic]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:verticalStr options:0 metrics:nil views:viewDic]];
    
    scrollView.contentSize = CGSizeMake(10000, 10000);
    
    LSTIledView *contentView = [[LSTIledView alloc] init];
    contentView.frame        = CGRectMake(0, 0, 10000, 10000);
    [scrollView addSubview:contentView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
