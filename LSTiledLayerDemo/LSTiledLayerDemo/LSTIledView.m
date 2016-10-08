//
//  LSTIledView.m
//  LSTiledLayerDemo
//
//  Created by ZhengWenQiang on 2016/9/30.
//  Copyright © 2016年 jsonseng. All rights reserved.
//

#import "LSTIledView.h"
#import <LSTiledLayer/LSTiledLayer.h>

@implementation LSTIledView

+ (Class)layerClass
{
    return [LSTiledLayer class];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    UIColor *randomColor = [UIColor colorWithRed:(random() % 255)/255.F green:(random() % 255)/255.F blue:(random() % 255)/255.F alpha:1.F];
    CGContextSetFillColorWithColor(ctx, randomColor.CGColor);
    CGContextFillRect(ctx, rect);
    
    NSString *positionStr = NSStringFromCGPoint(rect.origin);
    [positionStr drawInRect:rect withAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
}


@end
