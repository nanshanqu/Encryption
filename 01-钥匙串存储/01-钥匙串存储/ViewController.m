//
//  ViewController.m
//  01-钥匙串存储
//
//  Created by Mac on 2020/4/16.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"
#import "ASEncryptionManager.h"

#define USERNAME      @"张三"
#define PASSWORD      @"123456"
#define SERVICENAME   @"Ling_ling"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setData];
}


/// 存储账户密码
- (void)setData {
    
    [ASEncryptionManager encryptionManagerKeychainUtilsStoreUsername:USERNAME andPassword:PASSWORD forServiceName:SERVICENAME updateExisting:YES];
}

/// 钥匙串获取密码
- (IBAction)getPasswordWithKeyString {
    
    NSString *password = [ASEncryptionManager encryptionManagerKeychainUtilsGetPasswordForUsername:USERNAME andServiceName:SERVICENAME];
    NSLog(@"password:%@", password);
}

/// 删除用户信息
- (IBAction)deleteUserMessage {
    
    [ASEncryptionManager encryptionManagerKeychainUtilsDeleteItemForUsername:USERNAME andServiceName:SERVICENAME withAccessible:YES];
}

@end
