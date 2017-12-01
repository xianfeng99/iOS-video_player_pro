//
//  YUVFrameFastCopier.h
//  video_player
//
//  Created by apple on 16/9/7.
//  Copyright © 2016年 xiaokai.zhan. All rights reserved.
//

#import "BaseEffectFilter.h"
#import "YUVFrameCopier.h"
#import "VideoDecoder.h"

@interface YUVFrameFastCopier : YUVFrameCopier

- (void) renderWithTexId:(VideoFrame*) videoFrame;

@end
