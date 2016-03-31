//
//  TestView.h
//  ProtocolTest
//
//  Created by 王磊 on 16/2/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewDelegate.h"

@interface TestView : UIView

@property (nonatomic, weak) id <TestViewDelegate> delegate;

@end
