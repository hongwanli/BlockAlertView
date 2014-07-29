//
//  ViewController.m
//  BlockAlertView
//
//  Created by neolix on 14-7-29.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//

#import "ViewController.h"
#import "NeBlockAlertView.h"
@interface ViewController ()
            
- (IBAction)buttonPressed:(id)sender;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    [NeBlockAlertView alertWithTitle:@"提示" message:@"有新的版本，请更新！" cancelButtonTitle:@"取消" cancelBlock:^{
        NSLog(@"cancel被点击");
    } configButtonTitle:@"确定" configBlock:^{
        NSLog(@"config被点击");
    }];
}
@end
