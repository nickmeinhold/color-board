//
//  BNRColorDescription.m
//  Colorboard
//
//  Created by Nick Meinhold on 15/04/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRColorDescription.h"

@implementation BNRColorDescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _color = [UIColor colorWithRed:0 green:0 blue:0 alpha:1.0];
        _name = @"Blue";
    }
    return self;
}



@end
