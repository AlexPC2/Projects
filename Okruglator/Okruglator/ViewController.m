//
//  ViewController.m
//  Okruglator
//
//  Created by Александр Ноянов on 10.11.17.
//  Copyright © 2017 Popoff Developer Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Text fields:
//    UITextField
    // Creating image for button:
    // UIImage *buttonImage = [[UIImage imageWithCGImage:[UIImage imageNamed:@"blueButton1.png"]  scale:2.0 orientation:UIImageOrientationUp];
    //UIImage *buttonImage = [UIImage imageNamed:@"blueButton1.png"];
    //buttonImage = [UIImage imageWithCGImage:[buttonImage CGImage] scale:2.0 orientation:UIImageOrientationUp];
//        Creating button:
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    [button setTitle:@"Press Me" forState:UIControlStateNormal];
//    //[button sizeToFit];
//    button.frame = CGRectMake(0, 0, 100, 50);
//    button.center = CGPointMake(320/2, 300);
//    [self.view addSubview:button];
//    
//    // Make round button
////    button.layer.cornerRadius = 10;
////    button.clipsToBounds = true;
//    
//    
//      //[button setImage:[UIImage imageWithCGImage:(__bridge CGImageRef _Nonnull)(buttonImage)] forState:UIControlStateNormal];
//    [button setImage:[UIImage imageNamed:@"blueButton1.png"] forState: UIControlStateNormal /* UIImageOrientationUp*/];
//    
//    //[button setImage:[UIImage imageNamed:@"blueButt.png"] forState:UIControlStateNormal];
//    
//    // Add an action in current code file (i.e. target)
//    [button addTarget:self action:@selector(onButtonClicked:)
//     forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:button];
    
//    Disable user input in Output text field
    [_TextFieldOut setUserInteractionEnabled:NO];
    
//    Dismiss keyboard after input:
//    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
    
//    [self.view endEditing:YES];
    
//    CGRect frameRect = _TextFieldOut.frame;
//    frameRect.size.height = 300; // <-- Specify the height you want here.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   // UITouch *touch = [touches anyObject];
    
//    if([self ])
    [self.view endEditing:YES];
    }

- (IBAction)onButtonClicked:(id)sender {
 
    
//    Read value when button pressed:
    double value = [_TextFieldIn.text doubleValue];  // Value from Input text field
    
    int amount = (int)value;

    double decPart = value - amount;    // Decimal part from value
    
    int counter;
    int decPartint;
   // while(decPart < 10*10){
   //     decPart = decPart * 10;
   //     decPartint = decPart;
   // }
    // Make actions with inputed
    //if(amount * 100 % 10 == 2 ){
    //}

    //int intpart = (int)amount;          // Whole part
   // double decpart = amount - intpart;  // Decimal part
    
    //int FourDecimal = (int)(decpart * 10000);
    
    // Check 
    
    // Now if third number is larger, then 5 then round off
    
   // if(FourDecimal % 10 ){
   //     }
    
    //amount = intpart + decpart;
    
//        Change text color:
//    [self.TextFieldOut setTextColor:[UIColor greenColor]];
    [self.TextFieldOut setTextColor:[UIColor greenColor]];
    
//    NSString *res = amount;
    
    _TextFieldOut.text=[NSString  stringWithFormat:@"%f",value];
    
//    NSString * str=@"Result";
//    _TextFieldOut.text=str;
    
    
    // Print message:
    NSLog(@"Button Pressed");
   // NSLog(double amount );
    [self.view endEditing:YES];
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    [self.TextFieldIn setTextColor:[UIColor greenColor]];
    
    textField.placeholder = textField.text;
    textField.text = @"";
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.text.length == 0) {
        textField.text = textField.placeholder;
    }
    textField.placeholder = @"";
}


//  Changed value in text filed
- (IBAction)InputValue:(id)sender {
    
}

- (IBAction)TextFieildInEditingBegin:(id)sender {
    NSString * str=@"";
    _TextFieldIn.text=str;
}

// When Text Field Input touched
- (IBAction)FieldInTouch:(id)sender {
    
    //    Change text color:
    [_TextFieldIn setTextColor:[UIColor greenColor]];

    
    _TextFieldIn.placeholder = _TextFieldIn.text;
    _TextFieldIn.text = @"";
    
//    _TextFieldIn.text=@"text";
//    _TextFieldIn.textFieldDidBeginEditing;
    
}
@end
