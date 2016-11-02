//
//  IntroductionViewController.m
//  WoolenHome
//
//  Created by Master.lyn on 16/11/2.
//  Copyright © 2016年 Master.lyn. All rights reserved.
//

#import "IntroductionViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface IntroductionViewController ()
@property (nonatomic, strong) MPMoviePlayerController *moviePlayerController;

@end

@implementation IntroductionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"mp4"];
    
    self.moviePlayerController.contentURL = [[NSURL alloc] initFileURLWithPath:moviePath];
    
    [self.moviePlayerController play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Lazyload
- (MPMoviePlayerController *)moviePlayerController {
    if (!_moviePlayerController) {
        _moviePlayerController = [[MPMoviePlayerController alloc] init];
        [_moviePlayerController setShouldAutoplay:YES];
        
        _moviePlayerController.movieSourceType = MPMovieSourceTypeFile;
        [_moviePlayerController setFullscreen:YES];
        
        [_moviePlayerController setRepeatMode:MPMovieRepeatModeOne];
        _moviePlayerController.controlStyle = MPMovieControlStyleNone;
        _moviePlayerController.view.frame = [UIScreen mainScreen].bounds;
        
        [self.view addSubview:self.moviePlayerController.view];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackStateChanged) name:MPMoviePlayerLoadStateDidChangeNotification object:nil];
    }
    
    return _moviePlayerController;
}

#pragma mark - NSNotificationCenter
- (void)playbackStateChanged {
    MPMoviePlaybackState playbackState = [self.moviePlayerController playbackState];
    if (playbackState == MPMoviePlaybackStateStopped || playbackState == MPMoviePlaybackStatePaused) {
        [self.moviePlayerController play];
    }
}

@end
