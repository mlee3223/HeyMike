//
//  SwitchViewController.h
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchViewController : UIViewController

@property(strong,nonatomic) NSArray *pickerData;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *pickerLabel;
- (IBAction)stepper:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *stepperLabel;


@property (strong, nonatomic) IBOutlet UIStepper *stepperOutlet;
- (IBAction)switchButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *switchLabel;


@property (strong, nonatomic) IBOutlet UIButton *nextPageButton;

@property (strong, nonatomic) IBOutlet UISwitch *switchButton;



@end
