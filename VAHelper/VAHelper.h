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

+ (BOOL)isSystemVersionLessThanIOS7;
+ (BOOL)isSystemVersionLessThanIOS6;

+ (BOOL)isPortrait;
+ (BOOL)isLandscape;
+ (UIInterfaceOrientation)interfaceOrientation;

@end
