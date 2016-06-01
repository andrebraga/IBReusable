//
//  FramingView.m
//  IBReusable
//
//  Created by André Braga on 05/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import "FramingView.h"

@implementation FramingView

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;

    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;

    self.layer.borderWidth = borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;

    self.layer.cornerRadius = cornerRadius;
}

@end
