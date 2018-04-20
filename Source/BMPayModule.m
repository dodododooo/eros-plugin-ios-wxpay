//
//  BMPayModule.m
//  WeexDemo
//
//  Created by XHY on 2017/2/7.
//  Copyright © 2017年 taobao. All rights reserved.
//

#import "BMPayModule.h"
#import "BMPayManager.h"
#import <WechatOpenSDK/WXApi.h>
#import <WeexPluginLoader/WeexPluginLoader.h>

WX_PlUGIN_EXPORT_MODULE(bmWXPay, BMPayModule)

@implementation BMPayModule

@synthesize weexInstance;

WX_EXPORT_METHOD_SYNC(@selector(isInstallWXApp))
WX_EXPORT_METHOD(@selector(initWX:))
WX_EXPORT_METHOD(@selector(pay:callback:))

/** 判断是否安装了微信 */
-(BOOL)isInstallWXApp
{
    return [WXApi isWXAppInstalled];
}

- (void)initWX:(NSString *)appkey
{
    [WXApi registerApp:appkey];
}

- (void)pay:(NSDictionary *)info callback:(WXModuleCallback)callback
{
    [[BMPayManager shareInstance] payByWechat:info callback:callback];
}

@end
