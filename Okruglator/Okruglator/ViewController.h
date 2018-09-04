//
//  ViewController.h
//  Okruglator
//
//  Created by Александр Ноянов on 10.11.17.
//  Copyright © 2017 Popoff Developer Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *myButton;
- (IBAction)onButtonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *TextFieldOut;

- (IBAction)FieldInTouch:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *TextFieldIn;
- (IBAction)InputValue:(id)sender;
- (IBAction)TextFieildInEditingBegin:(id)sender;

@end

