//
//  WebViewViewController.m
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()

@end

@implementation WebViewViewController
@synthesize webView;
@synthesize nextPageButton;


- (void)viewDidLoad {
    [super viewDidLoad];
   
    //Naviagation Bar Coloe
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f];
    //Navigation Bar Button Color
    self.navigationController.navigationBar.tintColor =[UIColor whiteColor];
    //Navigation Bar Title Text
    [self.navigationItem setTitle:@"Webview"];
    //NAvigation Title Text Color
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    //Button
    nextPageButton.layer.cornerRadius = 5;
    [nextPageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nextPageButton setBackgroundColor:[UIColor colorWithRed:41/255.0f green:216/255.0f blue:164/255.0f alpha:1.0f]];
    
    NSURL *url = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    
}





@end
