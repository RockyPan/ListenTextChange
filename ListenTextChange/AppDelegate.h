//
//  AppDelegate.h
//  ListenTextChange
//
//  Created by PanKyle on 14-10-21.
//  Copyright (c) 2014年 TGD. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


- (IBAction)text1Changing:(id)sender;
- (IBAction)text2Changing:(id)sender;


@property (weak) IBOutlet NSTextField *text3;
@property (weak) IBOutlet NSTextField *text4;
@property (weak) IBOutlet NSTextFieldCell *text3cell;

@end

