//
//  AppDelegate.m
//  ListenTextChange
//
//  Created by PanKyle on 14-10-21.
//  Copyright (c) 2014年 TGD. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)text1Changing:(id)sender {
    NSTextField * tf = (NSTextField *)sender;
    NSLog(@"text1: %@", [tf stringValue]);
}

- (IBAction)text2Changing:(id)sender {
    NSTextField * tf = (NSTextField *)sender;
    NSLog(@"text2: %@", [tf stringValue]);
}

@end
