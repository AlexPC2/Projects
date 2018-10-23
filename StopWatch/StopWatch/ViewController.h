//
//  ViewController.h
//  StopWatch
//
//  Created by Alex Noyanov on 18.10.18.
//  Copyright © 2018 Popoff Developer Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *StartButton;

@property (weak, nonatomic) IBOutlet UIButton *StopButton;
@property (weak, nonatomic) IBOutlet UIButton *ResetButton;
- (IBAction)StarButtonClicked:(id)sender;
- (IBAction)StopButtonCliked:(id)sender;
- (IBAction)ResetButtonClicked:(id)sender;


@end

