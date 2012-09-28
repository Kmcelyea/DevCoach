//
//  Configuration.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "Configuration.h"

@implementation Configuration

+ (Configuration *)instance {
    static Configuration *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[Configuration alloc] init ];
    });
    
    return _instance;
}


-(id) init{
    self = [super init];
    if(self)
    {
        
        userDefaultsValuesPath=[[NSBundle mainBundle] pathForResource:@"Defaults" ofType:@"plist"];
        userDefaultsValuesDict=[NSDictionary dictionaryWithContentsOfFile:userDefaultsValuesPath];
        [[NSUserDefaults standardUserDefaults] registerDefaults:userDefaultsValuesDict];
        prefs = [NSUserDefaults standardUserDefaults];
      
    }
    return self;
}

-(NSRect)positionRect {
    NSString *positiondata = [prefs stringForKey:@"position"];
    if([positiondata isEqualToString:@"BottomLeft"]){
        return BottomLeft;
        
    }
    if([positiondata isEqualToString:@"BottomRight"]){
        return BottomRight;
        
    }
    if([positiondata isEqualToString:@"TopLeft"]){
        return TopLeft;
        
    }
    if([positiondata isEqualToString:@"TopRight"]){
        return TopRight;
        
    }
    else return BottomLeft;
}

-(void)savePosition {
    prefs = [NSUserDefaults standardUserDefaults];
    [prefs removeObjectForKey:@"position"];
    [prefs setObject:_position forKey:@"position"];
    
    [prefs synchronize];
}

@end
