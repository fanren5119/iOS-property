//
//  UIView+title.m
//  CategoryTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "UIView+title.h"
#import <objc/runtime.h>

@implementation UIView (title)

- (void)setTitle:(NSString *)title
{
    objc_setAssociatedObject(self, @"title", title, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)title
{
    return objc_getAssociatedObject(self, @"title");
}


@end
