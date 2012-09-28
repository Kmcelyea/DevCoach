//
//  CSharpTable.h
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSharpTable : NSObject{
    
    
    IBOutlet NSTableView *referencesTable;
    
}

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;


- (IBAction)saveAction:(id)sender;
- (IBAction)reloadTable:(id)sender;

@end
