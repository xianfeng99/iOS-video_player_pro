//
//  ViewController.m
//  video_player_pro
//
//  Created by apple on 2017/7/11.
//  Copyright © 2017年 xiaokai.zhan. All rights reserved.
//

#import "ViewController.h"
#import "ELVideoViewPlayerController.h"
#import "CommonUtil.h"
NSString * const MIN_BUFFERED_DURATION = @"Min Buffered Duration";
NSString * const MAX_BUFFERED_DURATION = @"Max Buffered Duration";

@interface ViewController ()
{
    NSMutableDictionary*            _requestHeader;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _requestHeader = [NSMutableDictionary dictionary];
    _requestHeader[MIN_BUFFERED_DURATION] = @(2.0f);
    _requestHeader[MAX_BUFFERED_DURATION] = @(4.0f);
}

- (IBAction)forwardPlayer:(id)sender {
    NSLog(@"forward local player page...");
    NSString* videoFilePath = [CommonUtil bundlePath:@"test.flv"];
    BOOL usingHWCodec = NO;//YES;
    ELVideoViewPlayerController *vc = [ELVideoViewPlayerController viewControllerWithContentPath:videoFilePath contentFrame:self.view.bounds usingHWCodec:usingHWCodec parameters:_requestHeader];
    [[self navigationController] pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
