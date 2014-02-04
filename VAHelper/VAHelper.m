//
//  VAHelper.m
//  VAHelper
//
//  Created by Alexandr Veremeenko on 2/3/14.
//  Copyright (c) 2014 Alexandr Veremeenko. All rights reserved.
//

#import "VAHelper.h"


@implementation VAHelper

#pragma mark - UIDevice information helper methods

+ (BOOL)isIpad
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

+ (BOOL)isIphone
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone);
}

+ (BOOL)isSystemVersionLessThanIOS7
{
    return ([[UIDevice currentDevice].systemVersion floatValue] < 7.0);
}

+ (BOOL)isSystemVersionLessThanIOS6
{
    return ([[UIDevice currentDevice].systemVersion floatValue] < 6.0);
}

#pragma mark - UIInterfaceOrientation helper methods

+ (BOOL)isPortrait
{
    UIInterfaceOrientation orientation = [VAHelper interfaceOrientation];
    return ((orientation == UIInterfaceOrientationPortrait) || (orientation == UIInterfaceOrientationPortraitUpsideDown));
}

+ (BOOL)isLandscape
{
    return ![VAHelper isPortrait];
}

+ (UIInterfaceOrientation)interfaceOrientation
{
    return [[UIApplication sharedApplication] statusBarOrientation];
}

@end
