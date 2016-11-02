//
//  WHBasePreference.m
//  WoolenHome
//
//  Created by Master.lyn on 16/11/1.
//  Copyright © 2016年 Master.lyn. All rights reserved.
//

#import "WHBasePreference.h"

@implementation WHBasePreference

+ (void) saveUserInfoKey:(nonnull NSString *)key stringValue:(nonnull NSString *)value {
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:key];
}

+ (nullable NSString *) getUserInfoStringByKey:(nonnull NSString *)key {
    NSString *res = nil;
    id objValue = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(objValue && ![objValue isKindOfClass:[NSNull class]]) {
        res = objValue;
    }
    return res;
}

+ (void) saveUserInfoKey:(nonnull NSString *)key numberValue:(nonnull NSNumber *)value {
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:key];
}

+ (nullable NSNumber *) getUserInfoNumberByKey:(nonnull NSString *)key {
    NSNumber *res = nil;
    id objValue = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(objValue && ![objValue isKindOfClass:[NSNull class]]) {
        res = objValue;
    }
    return res;
}

@end
