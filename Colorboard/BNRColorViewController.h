//
//  BNRColorViewController.h
//  Colorboard
//
//  Created by Nick Meinhold on 15/04/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRColorDescription.h"

@interface BNRColorViewController : UIViewController

@property (nonatomic) BOOL existingColor;
@property (nonatomic) BNRColorDescription *colorDescription; 

@end
