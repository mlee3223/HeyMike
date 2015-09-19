//
//  JSONOutputViewController.h
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSONOutputViewController :  UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(strong,nonatomic) NSArray *jsonData;
@property (strong, nonatomic) IBOutlet UIButton *nextPageButton;



@end
