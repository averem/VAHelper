//
//  VAHelper.m
//  VAHelper
//
//  Created by Alexandr Veremeenko on 2/3/14.
//  Copyright (c) 2014 Alexandr Veremeenko. All rights reserved.
//

#import "VAHelper.h"


@implementation VAHelper

+ (BOOL)isIpad
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

+ (BOOL)isIphone
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone);
}

#pragma mark - Screen information

+ (BOOL)is4inchScreen
{
    return ([UIScreen mainScreen].bounds.size.height == 568.);
}

+ (BOOL)is3_5inchScreen
{
    return ([UIScreen mainScreen].bounds.size.height == 480.);
}

+ (BOOL)isRetinaScreen
{
    return ([[UIScreen mainScreen] scale] == 2);
}

#pragma mark - Device information

+ (NSString *)deviceName
{
    return [UIDevice currentDevice].name;
}

+ (NSString *)deviceModel
{
    return [UIDevice currentDevice].model;
}

+ (NSString *)deviceSystemName
{
    return [UIDevice currentDevice].systemName;
}

+ (NSString *)deviceSystemVersionString
{
    return [UIDevice currentDevice].systemVersion;
}

+ (float)deviceSystemVersionFloatValue
{
    return [[VAHelper deviceSystemVersionString] floatValue];
}

+ (BOOL)isSystemVersionLessThanIOS7
{
    return ([VAHelper deviceSystemVersionFloatValue] < 7.0);
}

+ (BOOL)isSystemVersionLessThanIOS6
{
    return ([VAHelper deviceSystemVersionFloatValue] < 6.0);
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

#pragma mark - Application information

+ (NSString *)applicationName
{
    NSDictionary *infoDictionary = [VAHelper applicationInfoDictionary];
    return infoDictionary[@"CFBundleDisplayName"];
}

+ (NSString *)applicationVersion
{
    NSDictionary *infoDictionary = [VAHelper applicationInfoDictionary];
    return infoDictionary[@"CFBundleShortVersionString"];
}

+ (NSString *)applicationBuildVersion
{
    NSDictionary *infoDictionary = [VAHelper applicationInfoDictionary];
    return infoDictionary[@"CFBundleVersion"];
}

+ (NSString *)applicationDefaultUserAgent
{
    return @"";//TODO: complete it!
}

+ (NSDictionary *)applicationInfoDictionary
{
    return [[NSBundle mainBundle] infoDictionary];
}

@end
