//
//  XYZSwitchToLyricsSegue.m
//  KnowLyrics
//
//  Created by David Tien on 12/6/13.
//  Copyright (c) 2013 David Tien. All rights reserved.
//

#import "XYZSwitchToLyricsSegue.h"

@implementation XYZSwitchToLyricsSegue

- (void)perform {
    UIViewController* source = (UIViewController *)self.sourceViewController;
    UIViewController* destination = (UIViewController *)self.destinationViewController;
    
    CGRect sourceFrame = source.view.frame;
    sourceFrame.origin.x = -sourceFrame.size.width;
    
    CGRect destFrame = destination.view.frame;
    destFrame.origin.x = destination.view.frame.size.width;
    destination.view.frame = destFrame;
    
    destFrame.origin.x = 0;
    
    [source.view.superview addSubview:destination.view];
    
    [UIView animateWithDuration:1.0
                     animations:^{
                         source.view.frame = sourceFrame;
                         destination.view.frame = destFrame;
                     }
                     completion:^(BOOL finished) {
                         UIWindow *window = source.view.window;
                         [window setRootViewController:destination];
                     }];
}

@end
