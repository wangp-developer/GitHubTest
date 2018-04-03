//
//  SecondViewController.m
//  TestDemo
//
//  Created by DHgate on 26/3/18.
//  Copyright © 2018年 DHgate. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake((self.view.bounds.size.width - 100) / 2, (self.view.bounds.size.height - 100) / 2, 100, 100);
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn1.frame = CGRectMake((self.view.bounds.size.width - 100) / 2, (self.view.bounds.size.height - 100) / 4, 100, 100);
    [btn1 addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickAction{
    NSLog(@"😁😁");
}

// 长截图 类型可以是 tableView或者scrollView 等可以滚动的视图 根据需要自己改
- (void)saveLongImage:(UITableView *)tableView{
    UIImage* image = nil;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了，调整清晰度。
    UIGraphicsBeginImageContextWithOptions(tableView.contentSize, YES, [UIScreen mainScreen].scale);
    CGPoint savedContentOffset = tableView.contentOffset;
    CGRect savedFrame = tableView.frame;
    tableView.contentOffset = CGPointZero;
    tableView.frame = CGRectMake(0, 0, tableView.contentSize.width, tableView.contentSize.height);
    [tableView.layer renderInContext: UIGraphicsGetCurrentContext()];
    image = UIGraphicsGetImageFromCurrentImageContext();
    tableView.contentOffset = savedContentOffset;
    tableView.frame = savedFrame;
    UIGraphicsEndImageContext();
    if (image != nil) {
        //保存图片到相册
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    }
}

// 保存后回调方法
- (void)image: (UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    NSString *msg = nil ;
    if(error != NULL){
        msg = @"保存图片失败" ;
    }else{
        msg = @"保存图片成功，可到相册查看" ;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:msg delegate:self cancelButtonTitle:@"确定"  otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
