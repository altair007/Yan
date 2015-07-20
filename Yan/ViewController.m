//
//  ViewController.m
//  Yan
//
//  Created by 颜风 on 15/7/19.
//  Copyright (c) 2015年 颜风. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /* 读取文件,并解析 */
    NSString * filePath = [[NSBundle mainBundle] pathForResource: @"main" ofType: @"yan"];
    
    NSString * mainFile = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle: @"文件内容是" message: mainFile delegate:nil cancelButtonTitle:@"颜语言" otherButtonTitles:nil, nil];
    [alertView show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
