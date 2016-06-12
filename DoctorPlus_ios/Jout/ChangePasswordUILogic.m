//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/ChangePasswordUILogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/ChangePasswordUILogic.java"

#include "ChangePasswordUILogic.h"
#include "RegisterUILogic.h"


#line 4
@implementation ComFqHalcyonUilogicChangePasswordUILogic


#line 14
- (BOOL)checkInputWithNSString:(NSString *)oldPassword
                  withNSString:(NSString *)password
                  withNSString:(NSString *)rePassword
withComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack:(id<ComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack>)messageCallBack {
  
#line 15
  if (oldPassword == nil || [@"" isEqual:oldPassword]) {
    if (messageCallBack != nil) {
      [messageCallBack messageWithNSString:@"\u8bf7\u8f93\u5165\u539f\u5bc6\u7801"];
    }
    return NO;
  }
  else
#line 20
  if (![ComFqHalcyonUilogicRegisterUILogic checkPasswordWithNSString:password]) {
    if (messageCallBack != nil) {
      [messageCallBack messageWithNSString:@"\u8bf7\u8f93\u5165\u4e0d\u5c11\u4e8e6\u4f4d\u7684\u6570\u5b57\u5b57\u6bcd\u5bc6\u7801\u7ec4\u5408"];
    }
    return NO;
  }
  else
#line 25
  if (![self isSamePwdWithNSString:password withNSString:rePassword]) {
    if (messageCallBack != nil) {
      [messageCallBack messageWithNSString:@"\u4e24\u6b21\u5bc6\u7801\u4e0d\u76f8\u540c"];
    }
    return NO;
  }
  else {
    
#line 31
    return YES;
  }
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "checkInputWithNSString:withNSString:withNSString:withComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack:", "checkInput", "Z", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicChangePasswordUILogic = { "ChangePasswordUILogic", "com.fq.halcyon.uilogic", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonUilogicChangePasswordUILogic;
}

@end

@interface ComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack : NSObject
@end

@implementation ComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "messageWithNSString:", "message", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack = { "MessageCallBack", "com.fq.halcyon.uilogic", "ChangePasswordUILogic", 0x209, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonUilogicChangePasswordUILogic_MessageCallBack;
}

@end