//  VAHelper.m
//
//  Created by Alexandr Veremeenko on 2/3/14.
//  Copyright (c) 2014 Alexandr Veremeenko
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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

#pragma mark - NSData helpers

+ (NSString *)stringFromData:(NSData *)data
{
    if (!data || data.length == 0)
        return nil;
    
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return string;
}

+ (NSData *)dataFromString:(NSString *)string
{
    if (!string || string.length == 0)
        return nil;
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    return data;
}

@end
