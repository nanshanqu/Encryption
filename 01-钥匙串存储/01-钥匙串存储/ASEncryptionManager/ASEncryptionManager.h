//
//  ASEncryptionManager.h
//  01-钥匙串存储
//
//  Created by Mac on 2020/4/16.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASEncryptionManager : NSObject

/// 存储账户密码
+ (void)encryptionManagerKeychainUtilsStoreUsername:(NSString *)userName andPassword:(NSString *)password forServiceName:(NSString *)serviceName updateExisting:(BOOL)updateExisting;

/// 根据用户名取出密码
+ (NSString *)encryptionManagerKeychainUtilsGetPasswordForUsername:(NSString *)userName andServiceName:(NSString *)serviceName;

/// 删除用户
+ (void)encryptionManagerKeychainUtilsDeleteItemForUsername:(NSString *)userName andServiceName:(NSString *)serviceName withAccessible:(BOOL)accessible;

@end

NS_ASSUME_NONNULL_END
