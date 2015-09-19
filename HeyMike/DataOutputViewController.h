//
//  DataOutputViewController.h
//  HeyMike
//
//  Created by Michael Lee on 9/12/15.
//  Copyright (c) 2015 MoveMen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataOutputViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *dataOutLabel;
@property(strong,nonatomic) NSString *name;
@property(strong,nonatomic) NSString *age;
@property(strong,nonatomic) NSString *food;
@property (strong, nonatomic) IBOutlet UIButton *nextPageButton;
@end
