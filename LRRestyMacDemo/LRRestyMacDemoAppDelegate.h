//
//  LRRestyMacDemoAppDelegate.h
//  LRRestyMacDemo
//
//  Created by Luke Redpath on 09/06/2011.
//  Copyright 2011 LJR Software Limited. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LRRestyMacDemoAppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate> {
  NSWindow *_window;
  NSTextField *URLField;
  NSTextView *resultsView;
}

@property (nonatomic, retain) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet NSTextField *URLField;
@property (nonatomic, retain) IBOutlet NSTextView *resultsView;

- (IBAction)doFetch:(id)sender;
@end
