//
//  ViewController.m
//  TestDemo
//
//  Created by DHgate on 26/3/18.
//  Copyright © 2018年 DHgate. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    baseView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:baseView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake((self.view.bounds.size.width - 100) / 2, (self.view.bounds.size.height - 100) / 2, 100, 100);
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn1.frame = CGRectMake((self.view.bounds.size.width - 100) / 2, (self.view.bounds.size.height - 100) / 4, 100, 100);
    [btn1 addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)clickAction:(id)sender {
    
    SecondViewController *seVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:seVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
