//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Derek Bassett on 2/19/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController ()

@end

@implementation BullsEyeViewController
{
    int _currentValue;
    int _targetValue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startNewRound];
    [self updateLabels];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert
{
    NSString * message = [NSString stringWithFormat:@"The value of the slider is: %d\nThe target value is: %d", _currentValue, _targetValue];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello, World"
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
    [self startNewRound];
    [self updateLabels];
}

-(IBAction)sliderMoved:(UISlider *)slider
{
    _currentValue = lroundf(slider.value);
}

- (void)startNewRound
{
    _targetValue = 1 + arc4random_uniform(100);
    _currentValue = 50;
    self.slider.value = _currentValue;
}

-(void) updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d",_targetValue];
}

@end
