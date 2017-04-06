//
//  LSTiledLayer.h
//  LSTiledLayer
//
//  Created by ZhengWenQiang on 2016/9/30.
//  Copyright © 2016年 JsonSeng. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for LSTiledLayer.
FOUNDATION_EXPORT double LSTiledLayerVersionNumber;

//! Project version string for LSTiledLayer.
FOUNDATION_EXPORT const unsigned char LSTiledLayerVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LSTiledLayer/PublicHeader.h>


@interface LSTiledLayer : CALayer

/* The maximum size of each tile used to create the layer's content.
 * Defaults to (256, 256). Note that there is a maximum tile size, and
 * requests for tiles larger than that limit will cause a suitable
 * value to be substituted. */

@property CGSize tileSize;

@property (readonly, assign) BOOL isMainThread;

@end
