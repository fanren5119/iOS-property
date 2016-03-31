//
//  ViewController.m
//  ProtocolTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController () <TestViewDelegate>

@property (nonatomic, strong) NSString *text;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(0, 100, 320, 200)];
    testView.delegate = self;
    [self.view addSubview:testView];
}

- (void)setUserTitle:(NSString *)userTitle
{
    self.text = userTitle;
}

- (NSString *)userTitle
{
    return self.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
