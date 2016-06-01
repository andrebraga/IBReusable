//
//  FramingView.h
//  IBReusable
//
//  Created by André Braga on 05/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface FramingView : UIView

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end
