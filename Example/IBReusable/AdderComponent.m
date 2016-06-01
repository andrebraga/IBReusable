//
//  AdderComponent.m
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import "AdderComponent.h"

@interface AdderComponent ()

@property (weak, nonatomic) IBOutlet UIButton *subtracterButton;
@property (weak, nonatomic) IBOutlet UIButton *adderButton;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIView *framingView;

- (IBAction)add;
- (IBAction)subtract;

@end

@implementation AdderComponent

- (void)setFramingView:(UIView *)framingView {
    _framingView = framingView;

    if (self.adderColor) {
        framingView.backgroundColor = self.adderColor;
    }
}

- (void)setCountLabel:(UILabel *)countLabel {
    _countLabel = countLabel;

    self.count = self.count;

    if (self.adderColor) {
        countLabel.textColor = self.adderColor;
    }
}

- (void)setAdderColor:(UIColor *)adderColor {
    _adderColor = adderColor;

    self.framingView.backgroundColor = adderColor;
    self.countLabel.textColor = adderColor;
}

- (void)setEnabled:(BOOL)enabled {
    _enabled = enabled;

    [self adjustButtonsEnabledOrDisabled];
}

- (IBAction)add {
    NSInteger newCount = self.count + 1;

    if (newCount < self.count) {
        return;
    }

    if (self.useMaximumValue && newCount > self.maximumValue) {
        return;
    }

    self.count = newCount;
}

- (IBAction)subtract {
    NSInteger newCount = self.count - 1;

    if (newCount > self.count) {
        return;
    }

    if (self.useMinimumValue && newCount < self.minimumValue) {
        return;
    }

    self.count = newCount;
}

- (void)setCount:(NSInteger)count {
    _count = count;

    self.countLabel.text = [NSString stringWithFormat:@"%td", count];

    [self adjustButtonsEnabledOrDisabled];
}

- (void)adjustButtonsEnabledOrDisabled {
    if (self.enabled) {
        if (self.useMinimumValue) {
            self.subtracterButton.enabled = self.count > self.minimumValue;
        }

        if (self.useMaximumValue) {
            self.adderButton.enabled = self.count < self.maximumValue;
        }
    } else {
        self.subtracterButton.enabled = NO;
        self.adderButton.enabled = NO;
    }
}

@end
