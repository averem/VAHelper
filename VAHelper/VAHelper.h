//
//  VAHelper.h
//  VAHelper
//
//  Created by Alexandr Veremeenko on 2/3/14.
//  Copyright (c) 2014 Alexandr Veremeenko. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface VAHelper : NSObject

+ (BOOL)isIpad;
+ (BOOL)isIphone;

+ (BOOL)is4inchScreen;
+ (BOOL)is3_5inchScreen;
+ (BOOL)isRetinaScreen;

+ (NSString *)deviceName;
+ (NSString *)deviceModel;
+ (NSString *)deviceSystemName;
+ (NSString *)deviceSystemVersionString;
+ (float)deviceSystemVersionFloatValue;

+ (BOOL)isSystemVersionLessThanIOS7;
+ (BOOL)isSystemVersionLessThanIOS6;

+ (BOOL)isPortrait;
+ (BOOL)isLandscape;
+ (UIInterfaceOrientation)interfaceOrientation;

+ (NSString *)applicationName;
+ (NSString *)applicationVersion;
+ (NSString *)applicationBuildVersion;
+ (NSString *)applicationDefaultUserAgent;
+ (NSDictionary *)applicationInfoDictionary;

@end
