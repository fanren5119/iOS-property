//
//  ViewController.m
//  CategoryTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "UIView+title.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 320, 200)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    view.title = @"aaaa";
    
    NSLog(@"====%@", view.title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
