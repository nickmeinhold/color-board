//
//  BNRColorViewController.m
//  Colorboard
//
//  Created by Nick Meinhold on 15/04/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRColorViewController.h"

@interface BNRColorViewController ()

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UISlider *redSlider;
@property (nonatomic, weak) IBOutlet UISlider *greenSlider;
@property (nonatomic, weak) IBOutlet UISlider *blueSlider;

@end

@implementation BNRColorViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // remove the 'Done' button if this is an existing color
    if(self.existingColor)
    {
        self.navigationItem.rightBarButtonItem = nil;
    }
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    UIColor *color = self.colorDescription.color;
    
    // get the RGB values out of the UIColor object
    float red,green,blue;
    [color getRed:&red green:&green blue:&blue alpha:nil];
    
    // set the initial slider values
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
    
    // set the background color and text field value
    self.view.backgroundColor = color;
    self.textField.text = self.colorDescription.name;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.colorDescription.name = self.textField.text;
    self.colorDescription.color = self.view.backgroundColor; 
}

-(IBAction)dismiss:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil]; 
}

-(IBAction)changeColor:(id)sender
{
    float red = self.redSlider.value;
    float blue = self.blueSlider.value;
    float green = self.greenSlider.value;
    UIColor *newColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.view.backgroundColor = newColor;
    
    
}

@end
