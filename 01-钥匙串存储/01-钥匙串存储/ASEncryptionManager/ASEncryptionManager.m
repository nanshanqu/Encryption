//
//  ASEncryptionManager.m
//  01-钥匙串存储
//
//  Created by Mac on 2020/4/16.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ASEncryptionManager.h"
#import <SFHFKeychainUtils.h>

@implementation ASEncryptionManager

/// 存储账户密码
+ (void)encryptionManagerKeychainUtilsStoreUsername:(NSString *)userName andPassword:(NSString *)password forServiceName:(NSString *)serviceName updateExisting:(BOOL)updateExisting {
    
    // 存储账户密码
    [SFHFKeychainUtils storeUsername:userName andPassword:password forServiceName:serviceName updateExisting:YES  error:nil];
}

/// 根据用户名取出密码
+ (NSString *)encryptionManagerKeychainUtilsGetPasswordForUsername:(NSString *)userName andServiceName:(NSString *)serviceName {
    
    //根据用户名取出密码
    //    NSString  *passWordOld = [SFHFKeychainUtils getPasswordForUsernameOld:userName andServiceName:serviceName error:nil];
    
    NSString  *passWord = [SFHFKeychainUtils getPasswordForUsernameV2:userName andServiceName:serviceName error:nil];
    
    return passWord;
}

/// 删除用户
+ (void)encryptionManagerKeychainUtilsDeleteItemForUsername:(NSString *)userName andServiceName:(NSString *)serviceName withAccessible:(BOOL)accessible {
    
    // 删除用户
    [SFHFKeychainUtils deleteItemForUsername:userName andServiceName:serviceName error:nil withAccessible:accessible];
}


@end
