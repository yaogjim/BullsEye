//
//  BullsEyeViewController.h
//  BullsEye
//
//  Created by Derek Bassett on 2/19/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEyeViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;

- (IBAction)showAlert;
- (IBAction)sliderMoved:(UISlider *)slider;
@end
