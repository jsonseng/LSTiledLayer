//
//  LSTIledView.m
//  LSTiledLayerDemo
//
//  Created by ZhengWenQiang on 2016/9/30.
//  Copyright © 2016年 jsonseng. All rights reserved.
//

#import "LSTIledView.h"
#import <LSTiledLayer/LSTiledLayer.h>

@interface LSTIledView ()
{
    UIImage *contentImage;
}

@end

@implementation LSTIledView

+ (Class)layerClass
{
    return [LSTiledLayer class];
}

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        CGFloat scale = [UIScreen mainScreen].scale;
        ((CATiledLayer *)self.layer).tileSize = CGSizeMake(128 * scale, 128 * scale);
    }
    
    return self;
}

- (void)loadDrawContentImg
{
    contentImage = [UIImage imageNamed:@"drawContent"];
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
    
    [contentImage drawInRect:rect];
}


@end
