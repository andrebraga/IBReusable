//
//  NibDesignedView.m
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import "IBRReusableView.h"
#import "UIView+NibDesigned.h"

@implementation IBRReusableView

+ (instancetype)loadFromNib {
    return [super ibr_loadFromNib];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [[self class] loadFromNib];

    if (self) {
        self.frame = frame;
    } else {
        self = [super initWithFrame:frame];
    }

    return self;
}

- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder {
    return [self ibr_awakeAfterUsingCoder];
}

@end
