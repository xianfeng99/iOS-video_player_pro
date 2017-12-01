//
//  VideoToolboxDecoder.h
//  video_player
//
//  Created by apple on 16/9/6.
//  Copyright © 2016年 xiaokai.zhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <VideoToolbox/VideoToolbox.h>
#import "VideoDecoder.h"

@protocol H264DecoderDelegate <NSObject>
@optional

-(void) getDecodeImageData:(CVImageBufferRef) imageBuffer;
@end

@interface VideoToolboxDecoder : VideoDecoder

@property (nonatomic, strong) id <H264DecoderDelegate> delegate;

@property (nonatomic, assign) CMVideoFormatDescriptionRef formatDesc;
@property (nonatomic, assign) VTDecompressionSessionRef decompressionSession;
@end
