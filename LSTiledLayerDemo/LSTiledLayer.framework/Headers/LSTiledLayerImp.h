//
//  LSTiledLayerImp.h
//  KSOTiledLayer
//
//  Created by ZhengWenQiang on 2017/5/8.
//  Copyright © 2017年 kingsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LSTiledLayerImp <NSObject>

/* The maximum size of each tile used to create the layer's content.
 * Defaults to (256, 256). Note that there is a maximum tile size, and
 * requests for tiles larger than that limit will cause a suitable
 * value to be substituted. */

@property CGSize tileSize;

@property BOOL isMainThread;

@end
