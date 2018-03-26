//
//  ViewController.m
//  TestDemo
//
//  Created by DHgate on 26/3/18.
//  Copyright © 2018年 DHgate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    baseView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:baseView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
