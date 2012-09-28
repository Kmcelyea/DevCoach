//
//  CSharpReferenceViewController.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "CSharpReferenceViewController.h"

@interface CSharpReferenceViewController ()

@end

@implementation CSharpReferenceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)awakeFromNib {
    
    [_controllerwindow setBackgroundColor:Transblack];
    [_controllerwindow setOpaque:NO];
    [_controllerwindow setMovableByWindowBackground:YES];
    
}

@end
