//
//  ReferenceMenu.h
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReferenceMenu : NSObject

@property(assign)IBOutlet NSWindow *objcwindow;
@property(assign)IBOutlet NSWindow *csharpwindow;
@property(assign)IBOutlet NSWindow *githubwindow;


-(IBAction)showOBJCRef:(id)sender;
-(IBAction)showCSharpRef:(id)sender;
-(IBAction)showGitHubRef:(id)sender;

-(IBAction)hideOBJCRef:(id)sender;
-(IBAction)hideCSharpRef:(id)sender;
-(IBAction)hideGitHubRef:(id)sender;

-(IBAction)hideAllRefs:(id)sender;
@end
