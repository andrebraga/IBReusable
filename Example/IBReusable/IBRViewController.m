//
//  IBRViewController.m
//  IBReusable
//
//  Created by André Braga on 06/01/2016.
//  Copyright (c) 2016 André Braga. All rights reserved.
//

#import "IBRViewController.h"

@interface IBRViewController ()

- (IBAction)youHorridLittleMan;

@end

@implementation IBRViewController

- (IBAction)youHorridLittleMan {
    NSURL *blackAdderTheme = [NSURL URLWithString:@"http://www.dailymotion.com/video/xxpv5w_blackadder-all-opening-and-closing-themes-1983-1989_shortfilms"];
    [[UIApplication sharedApplication] openURL:blackAdderTheme];
}

@end
