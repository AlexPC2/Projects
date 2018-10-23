//
//  ViewController.h
//  MyResistorCalculator
//
//  Created by Александр Ноянов on 13.10.18.
//  Copyright © 2018 MPEI. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSButton *ButtonParallel;     // Кнопка параллеьного
@property (weak) IBOutlet NSButton *ButtonConsistently; // Кнопка последовательного
@property (weak) IBOutlet NSTextField *TextFieldRes1;   // Значение первого резистора
@property (weak) IBOutlet NSTextField *TextFieldRes2;   // Значение второго резистора
@property (weak) IBOutlet NSTextField *TextResult;      // Результат

- (IBAction)OnParallelClicked:(id)sender;               // Нажатие параллельно

- (IBAction)OnConsistently:(id)sender;                  // Нажатие последовательно

@end

