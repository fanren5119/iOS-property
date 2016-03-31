//
//  TestView.m
//  ProtocolTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "TestView.h"

@interface TestView ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation TestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createButton];
        [self createLable];
    }
    return self;
}

- (void)createLable
{
    UILabel *lable = [[UILabel alloc] init];
    lable.textColor = [UIColor blackColor];
    lable.textAlignment = NSTextAlignmentCenter;
    lable.text = @"bbbbb";
    [self addSubview:lable];
    self.label = lable;
}

- (void)createButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(respondsToButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    self.button = button;
}

- (void)respondsToButtonClick
{
    self.delegate.userTitle = @"aaa";
    self.label.text = self.delegate.userTitle;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.label.frame = self.bounds;
    self.button.frame = self.bounds;
}


@end
