//
//  ViewController.h
//  bmiCalculator
//
//  Created by Aahlaad LabMac on 08/03/15.
//  Copyright (c) 2015 shankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *mainTile;
@property (strong, nonatomic) IBOutlet UITextField *textWeight;
@property (strong, nonatomic) IBOutlet UITextField *textHeight;
@property (strong, nonatomic) IBOutlet UIDatePicker *pickerAge;
@property (strong, nonatomic) IBOutlet UILabel *textResult;

- (IBAction)buttonClick:(UIButton *)sender;

@end