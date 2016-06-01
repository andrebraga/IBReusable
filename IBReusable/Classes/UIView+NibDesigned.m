//
//  UIView+NibDesigned.m
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import "UIView+NibDesigned.h"

@implementation UIView (NibDesigned)

+ (instancetype)ibr_loadFromNib {
    NSString *nibName = [NSStringFromClass([self class]) componentsSeparatedByString:@"."].lastObject;

    if ([nibName isEqualToString:@"UIView"]) {
        return nil;
    }

    NSString *iPhoneNibName = [nibName stringByAppendingString:@"~iphone"];
    NSString *iPadNibName = [nibName stringByAppendingString:@"~ipad"];

    NSBundle *bundle = [NSBundle bundleForClass:[self class]];

    NSArray *loadedViews = nil;

    for (NSString *candidateNib in @[nibName, iPhoneNibName, iPadNibName]) {
        if ([bundle URLForResource:candidateNib withExtension:@"nib"]) {
            loadedViews = [bundle loadNibNamed:nibName owner:nil options:nil];
            break;
        }
    }

    UIView *loadedView = [loadedViews firstObject];

    return loadedView;
}

- (id)ibr_awakeAfterUsingCoder
{
    if (!self.subviews.count) {
        UIView *loadedView = [[self class] ibr_loadFromNib];

        loadedView.frame = self.frame;
        loadedView.contentMode = self.contentMode;
        loadedView.autoresizingMask = self.autoresizingMask;
        loadedView.tag = self.tag;
        loadedView.alpha = self.alpha;
        loadedView.clipsToBounds = self.clipsToBounds;
        loadedView.backgroundColor = self.backgroundColor;
        loadedView.transform = self.transform;
        loadedView.userInteractionEnabled = self.userInteractionEnabled;
        loadedView.opaque = self.opaque;
        loadedView.hidden = self.hidden;

        if ([self respondsToSelector:@selector(translatesAutoresizingMaskIntoConstraints)]) {
            loadedView.translatesAutoresizingMaskIntoConstraints = self.translatesAutoresizingMaskIntoConstraints;

            for (NSLayoutConstraint *constraint in self.constraints) {
                id firstItem = constraint.firstItem;
                if (firstItem == self) {
                    firstItem = loadedView;
                }

                id secondItem = constraint.secondItem;
                if (secondItem == self) {
                    secondItem = loadedView;
                }

                [loadedView addConstraint:
                 [NSLayoutConstraint constraintWithItem:firstItem
                                              attribute:constraint.firstAttribute
                                              relatedBy:constraint.relation
                                                 toItem:secondItem
                                              attribute:constraint.secondAttribute
                                             multiplier:constraint.multiplier
                                               constant:constraint.constant]];
            }
        }

        return loadedView;
    }

    return self;
}

@end
