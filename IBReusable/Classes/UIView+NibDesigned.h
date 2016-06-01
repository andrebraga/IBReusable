//
//  UIView+NibDesigned.h
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NibDesigned)

+ (_Nullable instancetype)ibr_loadFromNib;
- (_Nullable id)ibr_awakeAfterUsingCoder;

@end
