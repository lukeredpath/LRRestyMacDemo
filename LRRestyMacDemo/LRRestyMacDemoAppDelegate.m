//
//  LRRestyMacDemoAppDelegate.m
//  LRRestyMacDemo
//
//  Created by Luke Redpath on 09/06/2011.
//  Copyright 2011 LJR Software Limited. All rights reserved.
//

#import "LRRestyMacDemoAppDelegate.h"
#import <LRResty/LRResty.h>

@implementation LRRestyMacDemoAppDelegate

@synthesize window = _window;
@synthesize URLField;
@synthesize resultsView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  [self.URLField setStringValue:@"http://www.google.com"];
}

- (IBAction)doFetch:(id)sender
{
  NSString *URLString = [self.URLField stringValue];

  if (URLString == nil) return;

  NSURL *theURL = [NSURL URLWithString:URLString];
  
  if (theURL) {
    [[LRResty client] get:URLString withBlock:^(LRRestyResponse *response) {
      [resultsView setString:[response asString]];
    }];
  }
}

@end
