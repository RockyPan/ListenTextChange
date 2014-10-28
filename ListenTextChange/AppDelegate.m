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
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:NSTextDidChangeNotification object:nil];
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:nil object:self.text4];

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

//- (BOOL)control:(NSControl *)control isValidObject:(id)obj{
//    NSLog(@"invoke [control:isValidOjbect:]");
//    return YES;
//}
//
//- (BOOL)control:(NSControl *)control textShouldBeginEditing:(NSText *)fieldEditor {
//    NSLog(@"invoke [control:textShouldBeginEditing:]");
//    return YES;
//}
//
//- (BOOL)control:(NSControl *)control textShouldEndEditing:(NSText *)fieldEditor {
//    NSLog(@"invoke [control:textShouldEndEditing:]");
//    return YES;
//}
//
//- (NSArray *)control:(NSControl *)control
//            textView:(NSTextView *)textView
//         completions:(NSArray *)words
// forPartialWordRange:(NSRange)charRange
// indexOfSelectedItem:(NSInteger *)index
//{
//    NSLog(@"invoke [control:textView:completions:forPartialWordRange:indexOfSelectedItem:]");
//    return NULL;
//}

- (void) textChanged:(NSNotification *) notification {
//    NSLog(@"invoke textChanged:");
    if ([[notification object] delegate] == self.text3) {
        NSLog(@"text3 changed: %@", [self.text3 stringValue]);
        self.text4.stringValue = self.text3.stringValue;
    }
    if ([[notification object] delegate] == self.text4) {
        NSLog(@"text4 changed: %@", [self.text4 stringValue]);
    }
}



@end
