//
//  ViewController.m
//  MyResistorCalculator
//
//  Created by Александр Ноянов on 13.10.18.
//  Copyright © 2018 MPEI. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)OnParallelClicked:(id)sender {              // Нажата кнопка для параллельного
    //_TextFieldRes1.stringValue = @"Button1 Pressed!";
    double res1 = self.TextFieldRes1.doubleValue;
    double res2 = self.TextFieldRes2.doubleValue;
    double resultParallel;
    if((res1 > 0)&&(res2 > 0))
    {
        if((res1+res2)!=0)
        {
            resultParallel = (res1 * res2)/(res1 + res2);
            self.TextResult.doubleValue = resultParallel;
        }
        else{
            //self.TextResult.textColor = [UIColor redColor];
            //self.TextResult.textColor = UIColor.redColor;
            self.TextResult.stringValue = @"Ошибка: На ноль делить нельзя!";
        }
    }else
       self.TextResult.stringValue = @"Ошибка: Сопротивления не могут быть отрицательными!";
    
}

- (IBAction)OnConsistently:(id)sender {                 // Нажата кнопка для последовательного
    double res1 = self.TextFieldRes1.doubleValue;
    double res2 = self.TextFieldRes2.doubleValue;
    if((res1 > 0)&&(res2 > 0))
     self.TextResult.doubleValue = res1 + res2;
    else
     self.TextResult.stringValue = @"Ошибка: Сопротивления не могут быть отрицательными!";
}

@end
