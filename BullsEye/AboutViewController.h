//
//  AboutViewController.h
//  BullsEye
//
//  Created by Derek Bassett on 2/23/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;
-(IBAction)close;

@end
