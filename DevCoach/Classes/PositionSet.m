//
//  PositionSet.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "PositionSet.h"

@implementation PositionSet

-(IBAction)SetBottomLeft:(id)sender{
    
    [[Configuration instance]setPosition:@"BottomLeft"];
    [[Configuration instance]savePosition];
    NSAlert * non = [NSAlert alertWithMessageText:@"Change will take effect on next launch" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
    [non runModal];
    
}

-(IBAction)SetBottomRight:(id)sender{
    [[Configuration instance]setPosition:@"BottomRight"];
    [[Configuration instance]savePosition];
    NSAlert * non = [NSAlert alertWithMessageText:@"Change will take effect on next launch" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
    [non runModal];
    
}

-(IBAction)SetTopLeft:(id)sender{
    [[Configuration instance]setPosition:@"TopLeft"];
    [[Configuration instance]savePosition];
    NSAlert * non = [NSAlert alertWithMessageText:@"Change will take effect on next launch" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
    [non runModal];
    
    
}

-(IBAction)SetTopRight:(id)sender{
    [[Configuration instance]setPosition:@"TopRight"];
    [[Configuration instance]savePosition];
    NSAlert * non = [NSAlert alertWithMessageText:@"Change will take effect on next launch" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
    [non runModal];
    
}


@end
