//
//  DataInputViewController.h
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataInputViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *ageTextField;
@property (strong, nonatomic) IBOutlet UITextField *foodTextField;
- (IBAction)nextPageButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *nextPageButton;

@end
