//
//  AddCommonReferences.m
//  DevCoach
//
//  Created by Kyle J. McElyea on 9/28/12.
//  Copyright (c) 2012 Kyle J. McElyea. All rights reserved.
//

#import "AddCommonReferences.h"

@implementation AddCommonReferences
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize managedObjectContext = _managedObjectContext;

- (IBAction)addReferences:(id)sender{
    //OBJC Additons
    NSManagedObject *objc1 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc1 setValue:@"OBJ-C Ref Sheet" forKey:@"referencename"];
    [objc1 setValue:@"http://cdn5.raywenderlich.com/downloads/RW-Objective-C-Cheatsheet-v1_2.pdf" forKey:@"referenceinfo"];
    [objc1 setValue:@"link" forKey:@"referencetype"];
    
    NSManagedObject *objc2 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc2 setValue:@"Class Header" forKey:@"referencename"];
    [objc2 setValue:@"(.h) files are called header files" forKey:@"referenceinfo"];
    [objc2 setValue:@"text" forKey:@"referencetype"];
    
    NSManagedObject *objc3 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc3 setValue:@"Class Implementation" forKey:@"referencename"];
    [objc3 setValue:@"(.m) files are called implementation files" forKey:@"referenceinfo"];
    [objc3 setValue:@"text" forKey:@"referencetype"];
    
    NSManagedObject *objc4 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc4 setValue:@"Method Definition" forKey:@"referencename"];
    [objc4 setValue:@"Example Method: -(void)doit;" forKey:@"referenceinfo"];
    [objc4 setValue:@"text" forKey:@"referencetype"];
    
    NSManagedObject *objc5 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc5 setValue:@"OmNomRobot Tutorials" forKey:@"referencename"];
    [objc5 setValue:@"http://sourceforge.net/projects/nomrobotteach/files/" forKey:@"referenceinfo"];
    [objc5 setValue:@"link" forKey:@"referencetype"];
    
    NSManagedObject *objc6 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc6 setValue:@"Kmcelyea GitHub" forKey:@"referencename"];
    [objc6 setValue:@"https://github.com/Kmcelyea/" forKey:@"referenceinfo"];
    [objc6 setValue:@"link" forKey:@"referencetype"];
    
    NSManagedObject *objc7 = [NSEntityDescription insertNewObjectForEntityForName:@"OBJC" inManagedObjectContext:self.managedObjectContext];
    [objc7 setValue:@"Raywenderlich.com" forKey:@"referencename"];
    [objc7 setValue:@"http://www.raywenderlich.com/" forKey:@"referenceinfo"];
    [objc7 setValue:@"link" forKey:@"referencetype"];
    
    //Github Additions
    NSManagedObject *git = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git setValue:@"Switch and Create Branch" forKey:@"referencename"];
    [git setValue:@"git checkout -b BranchName" forKey:@"referenceinfo"];
    [git setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git1 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git1 setValue:@"Delete Local Branch" forKey:@"referencename"];
    [git1 setValue:@"git branch -d BranchName" forKey:@"referenceinfo"];
    [git1 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git2 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git2 setValue:@"Clone Repo" forKey:@"referencename"];
    [git2 setValue:@"git clone repolink" forKey:@"referenceinfo"];
    [git2 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git3 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git3 setValue:@"Push Repo" forKey:@"referencename"];
    [git3 setValue:@"git push origin branchName" forKey:@"referenceinfo"];
    [git3 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git4 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git4 setValue:@"Pull Repo" forKey:@"referencename"];
    [git4 setValue:@"git pull origin branchName" forKey:@"referenceinfo"];
    [git4 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git5 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git5 setValue:@"Checkout Branch" forKey:@"referencename"];
    [git5 setValue:@"git checkout branchName" forKey:@"referenceinfo"];
    [git5 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git6 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git6 setValue:@"Commit Changes with message" forKey:@"referencename"];
    [git6 setValue:@"git commit -m"" place your message inbetween the quotes and it will add it to the commit message" forKey:@"referenceinfo"];
    [git6 setValue:@"CMD" forKey:@"referencetype"];
    
    NSManagedObject *git7 = [NSEntityDescription insertNewObjectForEntityForName:@"Github" inManagedObjectContext:self.managedObjectContext];
    [git7 setValue:@"Git reference" forKey:@"referencename"];
    [git7 setValue:@"http://gitref.org/" forKey:@"referenceinfo"];
    [git7 setValue:@"link" forKey:@"referencetype"];
    
    
    //C# Additions
    
    [self saveAction];
    
    
}

- (NSURL *)applicationFilesDirectory
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *appSupportURL = [[fileManager URLsForDirectory:NSApplicationSupportDirectory inDomains:NSUserDomainMask] lastObject];
    return [appSupportURL URLByAppendingPathComponent:@"com.OmNomRobot.DevCoach"];
}

// Creates if necessary and returns the managed object model for the application.
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel) {
        return _managedObjectModel;
    }
	
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"DevCoach" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

// Returns the persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it. (The directory for the store is created, if necessary.)
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator) {
        return _persistentStoreCoordinator;
    }
    
    NSManagedObjectModel *mom = [self managedObjectModel];
    if (!mom) {
        NSLog(@"%@:%@ No model to generate a store from", [self class], NSStringFromSelector(_cmd));
        return nil;
    }
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *applicationFilesDirectory = [self applicationFilesDirectory];
    NSError *error = nil;
    
    //    NSDictionary *properties = [applicationFilesDirectory resourceValuesForKeys:@[NSURLIsDirectoryKey] error:&error];
    NSDictionary *properties = [applicationFilesDirectory resourceValuesForKeys:[NSArray arrayWithObject:NSURLIsDirectoryKey] error:&error];
    
    if (!properties) {
        BOOL ok = NO;
        if ([error code] == NSFileReadNoSuchFileError) {
            ok = [fileManager createDirectoryAtPath:[applicationFilesDirectory path] withIntermediateDirectories:YES attributes:nil error:&error];
        }
        if (!ok) {
            [[NSApplication sharedApplication] presentError:error];
            return nil;
        }
    } else {
        if (![properties[NSURLIsDirectoryKey] boolValue]) {
            // Customize and localize this error.
            NSString *failureDescription = [NSString stringWithFormat:@"Expected a folder to store application data, found a file (%@).", [applicationFilesDirectory path]];
            
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setValue:failureDescription forKey:NSLocalizedDescriptionKey];
            error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:101 userInfo:dict];
            
            [[NSApplication sharedApplication] presentError:error];
            return nil;
        }
    }
    
    NSURL *url = [applicationFilesDirectory URLByAppendingPathComponent:@"DevCoach.storedata"];
    NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];
    if (![coordinator addPersistentStoreWithType:NSXMLStoreType configuration:nil URL:url options:nil error:&error]) {
        [[NSApplication sharedApplication] presentError:error];
        return nil;
    }
    _persistentStoreCoordinator = coordinator;
    
    return _persistentStoreCoordinator;
}

// Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setValue:@"Failed to initialize the store" forKey:NSLocalizedDescriptionKey];
        [dict setValue:@"There was an error building up the data file." forKey:NSLocalizedFailureReasonErrorKey];
        NSError *error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        [[NSApplication sharedApplication] presentError:error];
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    
    return _managedObjectContext;
}

// Returns the NSUndoManager for the application. In this case, the manager returned is that of the managed object context for the application.
- (NSUndoManager *)windowWillReturnUndoManager:(NSWindow *)window
{
    return [[self managedObjectContext] undoManager];
}

// Performs the save action for the application, which is to send the save: message to the application's managed object context. Any encountered errors are presented to the user.
- (void)saveAction
{
    NSError *error = nil;
    
    if (![[self managedObjectContext] commitEditing]) {
        NSLog(@"%@:%@ unable to commit editing before saving", [self class], NSStringFromSelector(_cmd));
    }
    
    if (![[self managedObjectContext] save:&error]) {
        [[NSApplication sharedApplication] presentError:error];
    }
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender
{
    // Save changes in the application's managed object context before the application terminates.
    
    if (!_managedObjectContext) {
        return NSTerminateNow;
    }
    
    if (![[self managedObjectContext] commitEditing]) {
        NSLog(@"%@:%@ unable to commit editing to terminate", [self class], NSStringFromSelector(_cmd));
        return NSTerminateCancel;
    }
    
    if (![[self managedObjectContext] hasChanges]) {
        return NSTerminateNow;
    }
    
    NSError *error = nil;
    if (![[self managedObjectContext] save:&error]) {
        
        // Customize this code block to include application-specific recovery steps.
        BOOL result = [sender presentError:error];
        if (result) {
            return NSTerminateCancel;
        }
        
        NSString *question = NSLocalizedString(@"Could not save changes while quitting. Quit anyway?", @"Quit without saves error question message");
        NSString *info = NSLocalizedString(@"Quitting now will lose any changes you have made since the last successful save", @"Quit without saves error question info");
        NSString *quitButton = NSLocalizedString(@"Quit anyway", @"Quit anyway button title");
        NSString *cancelButton = NSLocalizedString(@"Cancel", @"Cancel button title");
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:question];
        [alert setInformativeText:info];
        [alert addButtonWithTitle:quitButton];
        [alert addButtonWithTitle:cancelButton];
        
        NSInteger answer = [alert runModal];
        
        if (answer == NSAlertAlternateReturn) {
            return NSTerminateCancel;
        }
    }
    
    return NSTerminateNow;
}

@end
