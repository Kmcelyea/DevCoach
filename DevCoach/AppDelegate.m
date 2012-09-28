//
//  AppDelegate.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "AppDelegate.h"
#import "GlobalHeader.h"

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [_window setBackgroundColor:Transblack];
    [_window setOpaque:NO];
    [_window setLevel:NSNormalWindowLevel - 1];
    [_window setFrame:[[Configuration instance]positionRect] display:YES];
}

- (void)applicationWillTerminate:(NSNotification *)notification {
    [[Configuration instance]savePosition];
}


@end
