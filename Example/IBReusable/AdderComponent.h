//
//  AdderComponent.h
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import <IBReusable/IBRReusableView.h>

@interface AdderComponent : IBRReusableView

@property (nonatomic) IBInspectable UIColor *adderColor;
@property (nonatomic) IBInspectable NSInteger count;
@property (nonatomic) IBInspectable NSInteger minimumValue;
@property (nonatomic) IBInspectable NSInteger maximumValue;
@property (nonatomic) IBInspectable BOOL useMinimumValue;
@property (nonatomic) IBInspectable BOOL useMaximumValue;
@property (nonatomic) IBInspectable BOOL enabled;

@end
