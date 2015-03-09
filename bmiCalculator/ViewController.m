//
//  ViewController.m
//  bmiCalculator
//
//  Created by Aahlaad LabMac on 08/03/15.
//  Copyright (c) 2015 shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textWeight endEditing:YES];
    [self.textHeight endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(UIButton *)sender {
    
    float weight = [self.textWeight.text floatValue];
    float height = [self.textHeight.text floatValue] / 100;
    
    float urbmi = weight / (height * height);
    
    if (weight > 0 & height > 0) {
        
        if (urbmi < 18) {
            
            self.textResult.text = [NSString stringWithFormat:@"BMI -> %02f. You are Underweight, eat healthy & build muscle",urbmi];
    
        }
        else if (urbmi > 30) {
            
            self.textResult.text = [NSString stringWithFormat:@"BMI -> %02f. You are Obese, Burn calories faster & act NOW!",urbmi];
            
        }
        else if (urbmi > 25 & urbmi < 30) {
            
             self.textResult.text = [NSString stringWithFormat:@"BMI -> %02f. You are Overweight, Eat Healthy & Excercise Daily",urbmi];
            
        }
        
        else if (urbmi > 18 & urbmi < 25) {
            
            self.textResult.text = [NSString stringWithFormat:@"BMI -> %02f. You are just fine",urbmi];
        }

    }
    else {
        
        self.textResult.text = [NSString stringWithFormat:@" Please check the entries & try again!"];
    }
    
}

@end
