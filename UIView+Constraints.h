//
//  UIView+Constraints.h
//  EpocratesEHR
//
//  Created by Chris Lavender on 10/23/13.
//  Copyright (c) 2013 Caretools, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Constraints)

- (void)configureCenteredConstraintsForView;
- (void)configureFillSuperviewConstraints;
- (void)configureFillSuperviewConstraintsWithHeaderView:(UIView *)headerView;
- (void)configureFillSuperviewConstraintsWithHeaderView:(UIView *)headerView footerView:(UIView *)footerView;

@end
