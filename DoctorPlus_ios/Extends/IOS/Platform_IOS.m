//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/Platform_IOS.java
//
//  Created by liaomin on 15-4-20.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/Platform_IOS.java"

#include "Platform_IOS.h"
#import "HttpHelper.h"
#import "HttpClient_IOS.h"
#import "DES3Utils_IOS.h"
#import "HMACSHA1.h"
#import "HMACSHA1_IOS.h"
#import "FQSecuritySession_IOS.h"
#import "TalkingData.h"
#import "Tools.h"
#line 5
@implementation ComFqHttpAsyncPlatform_IOS

- (id)init {
    self = [super init];
    [self checkNetwork];
    NSString *str = [[NSString alloc]init];
    [TalkingData setExceptionReportEnabled:YES];
    [TalkingData sessionStarted:@"B8D931B5C0D8625D86B61CB8B769FB37" withChannelId:Tools.getChannel];
    return self;
}

- (void) reachabilityChanged: (NSNotification*)note {
    int status = ComFqLibPlatformPlatform_get_NETWORKSATE_NO_();
    if([reach isReachable]){
        if([reach isReachableViaWiFi]){
            status = ComFqLibPlatformPlatform_get_NETWORKSATE_WIFI_();
        }else{
            status = ComFqLibPlatformPlatform_get_NETWORKSATE_OTHER_();
        }
    }
    [self setNetworkStateWithInt:status];
    NSLog(@"网络状态：%d",status);
}

-(void)checkNetwork
{
    reach = [Reachability reachabilityForInternetConnection];
    [reach startNotifier];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    [self reachabilityChanged:nil];

    
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)initNetWorkLibrary {
    [ComFqLibHttpHelper setHttpClientWithComFqHttpPotocolHttpClientPotocol:[[ComFqHttpAsyncHttpClient_IOS alloc] init]];
}


#line 16
- (void)initDes3Utils {
    [ComFqLibPlatformDES3Utils setDES3WithComFqLibPlatformDES3Utils_DES3Potocol:[[DES3Utils_IOS alloc] init]];
}


#line 21
- (void)initHMACSHA1 {
    [ComFqLibPlatformHMACSHA1 setHMACSHA1WithComFqLibPlatformHMACSHA1_HMACSHA1Potocol:[[HMACSHA1_IOS alloc] init]];
}


#line 26
- (void)scanFileWithNSString:(NSString *)path {
}


#line 31
- (void)scanFileWithNSString:(NSString *)oldPath
                withNSString:(NSString *)newPath {
}



- (IOSByteArray *)getRecord3DesKey{
//    NSString* str = [NSString stringWithBytes:[FQSecuritySession_IOS getRecord3DesKey] offset:0 length:[FQSecuritySession_IOS getRecord3DesKey].count charsetName:@"utf-8"];
//  NSLog([NSString stringWithFormat:@"~~~TOKEN:%@",str]);
//  NSString *idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
//  NSLog([NSString stringWithFormat:@"~~~uuid:%@",idfv]);
    
    return [FQSecuritySession_IOS getRecord3DesKey];
}

- (int)getTargetPlatform{
    return ComFqLibPlatformPlatform_get_PLANTFORM_IOS();
}

- (NSString *)SHA1WithNSString:(NSString *)text{
    return [HMACSHA1_IOS SHA1:text];
}

- (BOOL)setWithNSString:(NSString *)key
           withNSString:(NSString *)value
{
    NSUserDefaults* userDef = [NSUserDefaults standardUserDefaults];
    if (userDef) {
        [userDef setObject:value forKey:key];
        [userDef synchronize];
        return YES;
    }
    return NO;
}



- (NSString *)getWithNSString:(NSString *)key
{
    NSUserDefaults* userDef = [NSUserDefaults standardUserDefaults];
    if (userDef) {
        NSString* value = [userDef objectForKey:key];
        if(value) return  [userDef objectForKey:key];
    }
    return  @"";
}

- (void)sendNotificationWithNSString:(NSString *)type
                        withNSString:(NSString *)userInfo
{
    [[NSNotificationCenter defaultCenter] postNotificationName:type object:userInfo userInfo:nil];
}

-(void)UpdateDBWithNSString:(NSString *)localPath withInt:(int)imageId withInt:(int)responceCode {
    NSLog(@"----  上传成功－－－－－-----%@",localPath);
    NSLog(@"----  上传成功－－－－－-----%d",imageId);
    NSMutableDictionary* dc = [[NSMutableDictionary alloc] init];
    [dc setValue:localPath forKey:@"path"];
    [dc setValue:[NSString stringWithFormat:@"%d",imageId] forKey:@"imageId"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"upLoadedCallBack" object:nil userInfo:dc];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "Platform_IOS", NULL, 0x1, NULL },
    { "initNetWorkLibrary", NULL, "V", 0x1, NULL },
    { "initDes3Utils", NULL, "V", 0x1, NULL },
    { "initHMACSHA1", NULL, "V", 0x1, NULL },
    { "scanFileWithNSString:", "scanFile", "V", 0x1, NULL },
    { "scanFileWithNSString:withNSString:", "scanFile", "V", 0x1, NULL },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncPlatform_IOS = { "Platform_IOS", "com.fq.http.async", NULL, 0x1, 6, methods, 0, NULL, 0, NULL};
  return &_ComFqHttpAsyncPlatform_IOS;
}


- (void)clearUser{
   
}
@end
