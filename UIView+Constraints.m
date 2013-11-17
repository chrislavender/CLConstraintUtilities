//
//  UIView+Constraints.m
//  EpocratesEHR
//
//  Created by Chris Lavender on 10/23/13.
//  Copyright (c) 2013 Caretools, Inc. All rights reserved.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (void)configureCenteredConstraintsForView
{
    NSLayoutConstraint *constraint;
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.superview
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0.0f];
    
    [self.superview addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:self
                                              attribute:NSLayoutAttributeCenterY
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.superview
                                              attribute:NSLayoutAttributeCenterY
                                             multiplier:1.0f
                                               constant:0.0f];
    
    [self.superview addConstraint:constraint];
}

- (void)configureFillSuperviewConstraints
{
    
    NSDictionary *viewsDictionary;
    NSArray *constraints;
    
    if (self.superview) {
        viewsDictionary = NSDictionaryOfVariableBindings(self);
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[self]|"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[self]|"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
    }
}

- (void)configureFillSuperviewConstraintsWithHeaderView:(UIView *)headerView
{
    if (self.superview != nil && headerView.superview != nil) {
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(self, headerView);
        NSArray *constraints = nil;
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[self]|"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[headerView][self]|"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
    }
}

- (void)configureFillSuperviewConstraintsWithHeaderView:(UIView *)headerView footerView:(UIView *)footerView
{
    if (self.superview != nil && headerView.superview != nil) {
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(self, headerView, footerView);
        NSArray *constraints = nil;
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[self]|"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
        constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[headerView][self][footerView]"
                                                              options:0
                                                              metrics:nil
                                                                views:viewsDictionary];
        
        [self.superview addConstraints:constraints];
        
    }
}

@end
