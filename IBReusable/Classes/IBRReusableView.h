//
//  IBRReusableView.h
//  IBReusable
//
//  Created by André Braga on 19/05/16.
//  Copyright © 2016 André Braga. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface IBRReusableView : UIView

+ (_Nullable instancetype)loadFromNib;

@end
