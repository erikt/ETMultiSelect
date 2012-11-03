//
//  ETCellView.m
//  ETMultiSelect
//
//  Created by Erik Tjernlund on 2012-11-04.
//  Copyright (c) 2012 Erik Tjernlund. All rights reserved.
//

#import "ETCellView.h"
#import <QuartzCore/QuartzCore.h>

@implementation ETCellView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.restorationIdentifier = @"cvCell";
        self.backgroundColor = [UIColor clearColor];
        self.autoresizingMask = UIViewAutoresizingNone;

        CGFloat borderWidth = 3.0f;
        UIView *bgView = [[UIView alloc] initWithFrame:frame];
        bgView.layer.borderColor = [UIColor redColor].CGColor;
        bgView.layer.borderWidth = borderWidth;
        self.selectedBackgroundView = bgView;
        
        CGRect myContentRect = CGRectMake(self.contentView.bounds.origin.x + borderWidth,
                                          self.contentView.bounds.origin.y + borderWidth,
                                          self.contentView.bounds.size.width - 2*borderWidth,
                                          self.contentView.bounds.size.height - 2*borderWidth);
        
        UIView *myContentView = [[UIView alloc] initWithFrame:myContentRect];
        myContentView.backgroundColor = [UIColor whiteColor];
        myContentView.layer.borderColor = [UIColor colorWithWhite:0.5f alpha:1.0f].CGColor;
        myContentView.layer.borderWidth = borderWidth;
        [self.contentView addSubview:myContentView];
    
    }
    return self;
}

@end
