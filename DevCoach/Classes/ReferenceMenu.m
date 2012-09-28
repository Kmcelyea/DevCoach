//
//  ReferenceMenu.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "ReferenceMenu.h"

@implementation ReferenceMenu



-(IBAction)showOBJCRef:(id)sender{
    [_objcwindow makeKeyAndOrderFront:self];
    [_csharpwindow orderOut:self];
    [_githubwindow orderOut:self];
}

-(IBAction)showCSharpRef:(id)sender{
    [_csharpwindow makeKeyAndOrderFront:self];
    [_objcwindow orderOut:self];
    [_githubwindow orderOut:self];
}

-(IBAction)showGitHubRef:(id)sender{
    [_githubwindow makeKeyAndOrderFront:self];
    [_objcwindow orderOut:self];
    [_csharpwindow orderOut:self];
    
}

-(IBAction)hideOBJCRef:(id)sender{
    [_objcwindow orderOut:self];
    
}

-(IBAction)hideCSharpRef:(id)sender{
    [_csharpwindow orderOut:self];
    
}

-(IBAction)hideGitHubRef:(id)sender{
    [_githubwindow orderOut:self];
    
}


-(IBAction)hideAllRefs:(id)sender{
    [_githubwindow orderOut:self];
    [_csharpwindow orderOut:self];
    [_objcwindow orderOut:self];
}
@end
