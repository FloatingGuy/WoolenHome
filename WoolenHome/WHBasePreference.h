//
//  WHBasePreference.h
//  WoolenHome
//
//  Created by Master.lyn on 16/11/1.
//  Copyright © 2016年 Master.lyn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WHBasePreference : NSObject

+ (void) saveUserInfoKey:(nonnull NSString *)key stringValue:(nonnull NSString *)value;

+ (nullable NSString *) getUserInfoStringByKey:(nonnull NSString *)key;

+ (void) saveUserInfoKey:(nonnull NSString *)key numberValue:(nonnull NSNumber *)value;

+ (nullable NSNumber *) getUserInfoNumberByKey:(nonnull NSString *)key;

@end

NS_ASSUME_NONNULL_END
