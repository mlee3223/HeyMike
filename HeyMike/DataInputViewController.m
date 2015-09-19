//
//  DataInputViewController.m
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import "DataInputViewController.h"
#import "DataOutputViewController.h"

@interface DataInputViewController ()

@end

@implementation DataInputViewController
@synthesize nameTextField;
@synthesize ageTextField;
@synthesize foodTextField;
@synthesize nextPageButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Naviagation Bar Coloe
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f];
    //Navigation Bar Button Color
    self.navigationController.navigationBar.tintColor =[UIColor whiteColor];
    //Navigation Bar Title Text
    [self.navigationItem setTitle:@"Data Input"];
    //NAvigation Title Text Color
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    //Button
    nextPageButton.layer.cornerRadius = 5;
    [nextPageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nextPageButton setBackgroundColor:[UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f]];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [nameTextField resignFirstResponder];
    [foodTextField resignFirstResponder];
    [ageTextField resignFirstResponder];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqual:@"showDataOutput"])
    {
        DataOutputViewController *dataOutputVC = [segue destinationViewController];
        dataOutputVC.name = nameTextField.text;
        dataOutputVC.age = ageTextField.text;
        dataOutputVC.food = foodTextField.text;
        
    }
    
    
    
}

- (IBAction)nextPageButton:(id)sender {
}
@end
