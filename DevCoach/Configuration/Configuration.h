//
//  Configuration.h
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Configuration : NSObject
{
    NSString *userDefaultsValuesPath;
    NSDictionary *userDefaultsValuesDict;
    NSUserDefaults *prefs;
}


//Position Config
@property (nonatomic, strong)NSString * position;
@property(nonatomic)NSRect positionRect;

+ (Configuration *)instance;

-(void) savePosition;

@end
