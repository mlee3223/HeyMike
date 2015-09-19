//
//  SwitchViewController.m
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController
@synthesize pickerLabel;
@synthesize pickerData;
@synthesize stepperLabel;
@synthesize stepperOutlet;
@synthesize nextPageButton;
@synthesize switchButton;
@synthesize switchLabel;


- (void)viewDidLoad {
    [super viewDidLoad];
   
    //Naviagation Bar Coloe
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f];
    //Navigation Bar Button Color
    self.navigationController.navigationBar.tintColor =[UIColor whiteColor];
    //Navigation Bar Title Text
    [self.navigationItem setTitle:@"UI Elements"];
    //NAvigation Title Text Color
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    pickerData = @[@"Atlanta",@"New York",@"Miami",@"Detroit",@"Dallas",@"Las Vegas"];
    
    stepperLabel.text = 0;
    
    //Button
    nextPageButton.layer.cornerRadius = 5;
    [nextPageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nextPageButton setBackgroundColor:[UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f]];
    
    
}






-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    if (row == 0) {
        pickerLabel.text = @"GA";
    } else
        if (row == 1) {
            pickerLabel.text = @"NY";
        } else
            if (row == 2) {
                pickerLabel.text = @"FL";
            } else
                if (row == 3) {
                    pickerLabel.text = @"MI";
                }
                else
                    if (row == 4) {
                        pickerLabel.text = @"TX";
                    }
                    else
                        if (row == 5) {
                            pickerLabel.text = @"NV";
                        }
    
    
    
                }

- (IBAction)stepper:(id)sender {
    
    
    stepperLabel.text = [NSString stringWithFormat:@"%.f",stepperOutlet.value];
   
    
}
- (IBAction)switchButton:(id)sender {
    
    if(switchButton.on)
    {
        self.view.backgroundColor =[UIColor grayColor];
        switchLabel.text = @"Background is now Grey";
        
    }
    else
    {
        self.view.backgroundColor = [UIColor yellowColor];
        switchLabel.text=@"Background is now Yellow";
    }
    
    
}
@end
