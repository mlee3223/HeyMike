//
//  TableofContentsViewController.m
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import "TableofContentsViewController.h"

@interface TableofContentsViewController ()

@end

@implementation TableofContentsViewController
@synthesize nextPageButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Naviagation Bar Coloe
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f];
    //Navigation Bar Button Color
    self.navigationController.navigationBar.tintColor =[UIColor whiteColor];
    //Navigation Bar Title Text
    [self.navigationItem setTitle:@"Table of Contents"];
    //NAvigation Title Text Color
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    //Button
    nextPageButton.layer.cornerRadius = 5;
    [nextPageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nextPageButton setBackgroundColor:[UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f]];
    
    
    
    
}



@end
