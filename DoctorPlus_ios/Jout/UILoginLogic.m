//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/UILoginLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/UILoginLogic.java"

#include "AlarmClockLogic.h"
#include "ApiSystem.h"
#include "CertificationStatus.h"
#include "Constants.h"
#include "FileSystem.h"
#include "HalcyonUploadLooper.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "LoginLogic.h"
#include "Photo.h"
#include "ResetDoctorInfoLogic.h"
#include "UILoginLogic.h"
#include "User.h"
#include "android/util/Log.h"
#include "java/io/File.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"

BOOL ComFqHalcyonUilogicUILoginLogic_initialized = NO;


#line 21
@implementation ComFqHalcyonUilogicUILoginLogic

NSString * ComFqHalcyonUilogicUILoginLogic_TAG_;


#line 29
- (id)initWithComFqHalcyonUilogicUILoginLogic_UILogicCallback:(id<ComFqHalcyonUilogicUILoginLogic_UILogicCallback>)callback {
  if (self = [super init]) {
    
#line 30
    mCallback_ = callback;
  }
  return self;
}


#line 32
- (void)loginWithBoolean:(BOOL)isHaveNet
            withNSString:(NSString *)phoneNumber
            withNSString:(NSString *)pwd
            withNSString:(NSString *)clientVersion
            withNSString:(NSString *)clientType {
  
#line 33
  mPhoneNumber_ = phoneNumber;
  mPwd_ = pwd;
  
#line 36
  if (mLoginLogic_ == nil) {
    mLoginLogic_ = [[ComFqHalcyonUilogicUILoginLogic_$1 alloc] initWithComFqHalcyonUilogicUILoginLogic:self];
  }
  
#line 108
  [((ComFqHalcyonLogicLoginLogic *) nil_chk(mLoginLogic_)) autoLoginWithNSString:mPhoneNumber_ withNSString:mPwd_ withNSString:clientVersion withNSString:clientType];
}


#line 111
- (void)checkUser {
  
#line 114
  [self initUserHead];
  
#line 116
  [ComFqHalcyonEntityCertificationStatus initCertification];
}


#line 119
- (void)initInvient {
  [((ComFqHalcyonLogic2ResetDoctorInfoLogic *) [[ComFqHalcyonLogic2ResetDoctorInfoLogic alloc] init]) requestInvientWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:[[ComFqHalcyonUilogicUILoginLogic_$2 alloc] init]];
}


#line 136
- (void)initUserHead {
  
#line 137
  JavaIoFile *file = [[JavaIoFile alloc] initWithNSString:[((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getUserHeadPath]];
  if ([file exists]) return;
  ComFqHalcyonEntityUser *user = [ComFqLibToolsConstants getUser];
  if (user == nil || [user getHeadPicImageId] == 0) return;
  ComFqHalcyonExtendFilesystemFileSystem *filSys = [ComFqHalcyonExtendFilesystemFileSystem getInstance];
  
#line 147
  ComFqHalcyonEntityPhoto *photo = [[ComFqHalcyonEntityPhoto alloc] init];
  [photo setImageIdWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getHeadPicImageId]];
  [photo setImagePathWithNSString:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getHeadPicPath]];
  [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) getHeadImageWithComFqHalcyonEntityPhoto:photo withComFqLibCallbackICallback:[[ComFqHalcyonUilogicUILoginLogic_$3 alloc] init] withBoolean:
#line 158
  NO withInt:1];
}

+ (void)initialize {
  if (self == [ComFqHalcyonUilogicUILoginLogic class]) {
    ComFqHalcyonUilogicUILoginLogic_TAG_ =
#line 22
    [[IOSClass classWithClass:[ComFqHalcyonUilogicUILoginLogic class]] getSimpleName];
    ComFqHalcyonUilogicUILoginLogic_initialized = YES;
  }
}

- (void)copyAllFieldsTo:(ComFqHalcyonUilogicUILoginLogic *)other {
  [super copyAllFieldsTo:other];
  other->mCallback_ = mCallback_;
  other->mLoginLogic_ = mLoginLogic_;
  other->mPhoneNumber_ = mPhoneNumber_;
  other->mPwd_ = mPwd_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonUilogicUILoginLogic_UILogicCallback:", "UILoginLogic", NULL, 0x1, NULL },
    { "loginWithBoolean:withNSString:withNSString:withNSString:withNSString:", "login", "V", 0x1, NULL },
    { "checkUser", NULL, "V", 0x1, NULL },
    { "initInvient", NULL, "V", 0x1, NULL },
    { "initUserHead", NULL, "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ComFqHalcyonUilogicUILoginLogic_TAG_,  },
    { "mLoginLogic_", NULL, 0x2, "Lcom.fq.halcyon.logic.LoginLogic;", NULL,  },
    { "mCallback_", NULL, 0x2, "Lcom.fq.halcyon.uilogic.UILoginLogic$UILogicCallback;", NULL,  },
    { "mPhoneNumber_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "mPwd_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic = { "UILoginLogic", "com.fq.halcyon.uilogic", NULL, 0x1, 5, methods, 5, fields, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic;
}

@end

@interface ComFqHalcyonUilogicUILoginLogic_UILogicCallback : NSObject
@end

@implementation ComFqHalcyonUilogicUILoginLogic_UILogicCallback

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "logicBackWithInt:withInt:withNSString:", "logicBack", "V", 0x401, NULL },
    { "onAlarmCallback", NULL, "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic_UILogicCallback = { "UILogicCallback", "com.fq.halcyon.uilogic", "UILoginLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic_UILogicCallback;
}

@end

@implementation ComFqHalcyonUilogicUILoginLogic_$1


#line 39
- (void)returnErrorWithInt:(int)code
              withNSString:(NSString *)msg {
  
#line 40
  if (code == 0) {
    this$0_->mLoginLogic_ = nil;
    [((id<ComFqHalcyonUilogicUILoginLogic_UILogicCallback>) nil_chk(this$0_->mCallback_)) logicBackWithInt:0 withInt:0 withNSString:msg];
  }
  else {
    
#line 62
    this$0_->mLoginLogic_ = nil;
    [((id<ComFqHalcyonUilogicUILoginLogic_UILogicCallback>) nil_chk(this$0_->mCallback_)) logicBackWithInt:0 withInt:1 withNSString:msg];
  }
}


#line 71
- (void)loginSucess {
  
#line 95
  [this$0_ checkUser];
  [((ComFqHalcyonHalcyonUploadLooper *) nil_chk([ComFqHalcyonHalcyonUploadLooper getInstance])) start];
  [((id<ComFqHalcyonUilogicUILoginLogic_UILogicCallback>) nil_chk(this$0_->mCallback_)) logicBackWithInt:1 withInt:3 withNSString:@"success"];
  [AndroidUtilLog eWithNSString:ComFqHalcyonUilogicUILoginLogic_get_TAG_() withNSString:[NSString formatWithNSString:@"login success with user id: %d, doctor_id: %d" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]], [JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getDoctorId]] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
  (void) [[ComFqHalcyonLogic2AlarmClockLogic alloc] initWithComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack:[[ComFqHalcyonUilogicUILoginLogic_$1_$1 alloc] initWithComFqHalcyonUilogicUILoginLogic_$1:self]];
}

- (id)initWithComFqHalcyonUilogicUILoginLogic:(ComFqHalcyonUilogicUILoginLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "returnErrorWithInt:withNSString:", "returnError", "V", 0x1, NULL },
    { "loginSucess", NULL, "V", 0x1, NULL },
    { "initWithComFqHalcyonUilogicUILoginLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.uilogic.UILoginLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic_$1 = { "$1", "com.fq.halcyon.uilogic", "UILoginLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic_$1;
}

@end

@implementation ComFqHalcyonUilogicUILoginLogic_$1_$1


#line 100
- (void)onResultCallBackWithInt:(int)code {
  
#line 101
  [((id<ComFqHalcyonUilogicUILoginLogic_UILogicCallback>) nil_chk(this$0_->this$0_->mCallback_)) onAlarmCallback];
}


#line 103
- (void)onErrorCallBackWithInt:(int)code
                  withNSString:(NSString *)msg {
}

- (id)initWithComFqHalcyonUilogicUILoginLogic_$1:(ComFqHalcyonUilogicUILoginLogic_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onResultCallBackWithInt:", "onResultCallBack", "V", 0x1, NULL },
    { "onErrorCallBackWithInt:withNSString:", "onErrorCallBack", "V", 0x1, NULL },
    { "initWithComFqHalcyonUilogicUILoginLogic_$1:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.uilogic.UILoginLogic$1;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic_$1_$1 = { "$1", "com.fq.halcyon.uilogic", "UILoginLogic$$1", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic_$1_$1;
}

@end

@implementation ComFqHalcyonUilogicUILoginLogic_$2


#line 122
- (void)doInvientBackWithNSString:(NSString *)invient {
  
#line 123
  [((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) setInvitionWithNSString:invient];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doInvientBackWithNSString:", "doInvientBack", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic_$2 = { "$2", "com.fq.halcyon.uilogic", "UILoginLogic", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic_$2;
}

@end

@implementation ComFqHalcyonUilogicUILoginLogic_$3


#line 153
- (void)doCallbackWithId:(id)obj {
  
#line 154
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString stringWithFormat:@"%@", obj]];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doCallbackWithId:", "doCallback", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonUilogicUILoginLogic_$3 = { "$3", "com.fq.halcyon.uilogic", "UILoginLogic", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonUilogicUILoginLogic_$3;
}

@end
