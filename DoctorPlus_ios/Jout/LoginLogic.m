//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic/LoginLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic/LoginLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHeader.h"
#include "FQHttpParams.h"
#include "FileSystem.h"
#include "HttpRequestPotocol.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "LoginLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "android/util/Log.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 21
@implementation ComFqHalcyonLogicLoginLogic


#line 75
- (void)autoLoginWithNSString:(NSString *)name
                 withNSString:(NSString *)password
                 withNSString:(NSString *)clientVersion
                 withNSString:(NSString *)clientType {
  
#line 77
  JavaUtilHashMap *mMap = [[JavaUtilHashMap alloc] init];
  (void) [mMap putWithId:@"username" withId:name];
  (void) [mMap putWithId:@"pass_word" withId:password];
  
#line 81
  FQJSONObject *mRegisterJson = [ComFqLibJsonHelper createJsonWithJavaUtilMap:mMap];
  ComFqHttpAsyncFQHttpParams *mFqHttpParams = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:mRegisterJson];
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/users/login.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:mFqHttpParams withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:
#line 84
  [[ComFqHalcyonLogicLoginLogic_$1 alloc] initWithComFqHalcyonLogicLoginLogic:self withNSString:clientType withNSString:clientVersion withNSString:password]];
}


#line 134
- (JavaUtilHashMap *)creatJsonMap {
  
#line 135
  JavaUtilHashMap *mMap = [[JavaUtilHashMap alloc] init];
  (void) [mMap putWithId:@"username" withId:mUserName_];
  (void) [mMap putWithId:@"pass_word" withId:mPassWord_];
  return mMap;
}


#line 142
- (void)loginSucess {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 143
- (void)returnErrorWithInt:(int)code
              withNSString:(NSString *)msg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogicLoginLogic *)other {
  [super copyAllFieldsTo:other];
  other->mInterface_ = mInterface_;
  other->mPassWord_ = mPassWord_;
  other->mUserName_ = mUserName_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "autoLoginWithNSString:withNSString:withNSString:withNSString:", "autoLogin", "V", 0x1, NULL },
    { "creatJsonMap", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "loginSucess", NULL, "V", 0x401, NULL },
    { "returnErrorWithInt:withNSString:", "returnError", "V", 0x401, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mUserName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "mPassWord_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "mInterface_", NULL, 0x1, "Lcom.fq.halcyon.logic.LoginLogic$LoginLogicInterface;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicLoginLogic = { "LoginLogic", "com.fq.halcyon.logic", NULL, 0x401, 5, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogicLoginLogic;
}

@end

@interface ComFqHalcyonLogicLoginLogic_LoginLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogicLoginLogic_LoginLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onDataReturnWithInt:withNSString:", "onDataReturn", "V", 0x401, NULL },
    { "onDataErrorWithInt:withNSString:", "onDataError", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicLoginLogic_LoginLogicInterface = { "LoginLogicInterface", "com.fq.halcyon.logic", "LoginLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogicLoginLogic_LoginLogicInterface;
}

@end

@implementation ComFqHalcyonLogicLoginLogic_$1


#line 87
- (IOSObjectArray *)getRequestHeaders {
  
#line 88
  IOSObjectArray *fqHeaders = [IOSObjectArray arrayWithLength:2 type:[IOSClass classWithClass:[ComFqHttpAsyncFQHeader class]]];
  (void) IOSObjectArray_Set(fqHeaders, 0, [[ComFqHttpAsyncFQHeader alloc] initWithNSString:@"client_type" withNSString:val$clientType_]);
  (void) IOSObjectArray_Set(fqHeaders, 1, [[ComFqHttpAsyncFQHeader alloc] initWithNSString:@"client_version" withNSString:val$clientVersion_]);
  return fqHeaders;
}


#line 95
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  [this$0_ returnErrorWithInt:code withNSString:@"\u7f51\u7edc\u9519\u8bef"];
}

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 102
  if (responseCode != 0) {
    [this$0_ returnErrorWithInt:responseCode withNSString:msg];
    return;
  }
  FQJSONObject *mJsonObject = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
  NSString *mKey = [((FQJSONObject *) nil_chk(mJsonObject)) optStringWithNSString:@"client_salt"];
  if (![((NSString *) nil_chk(mKey)) isEqual:@""]) {
    (void) ComFqLibToolsConstants_set_KEY_STRING_([mKey getBytes]);
  }
  
#line 114
  ComFqHalcyonEntityUser *user = [[ComFqHalcyonEntityUser alloc] init];
  [user setAtttributeByjsonWithFQJSONObject:mJsonObject];
  [user setPasswordWithNSString:val$password_];
  [ComFqLibToolsConstants setUserWithComFqHalcyonEntityUser:user];
  [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) saveUserWithComFqHalcyonEntityUser:user];
  
#line 125
  int id_ = [((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId];
  [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) saveLoginUserWithNSString:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getPhoneNumber] withNSString:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getPassword] withInt:id_];
  
#line 128
  [AndroidUtilLog eWithNSString:@"~~~user_id" withNSString:[NSString stringWithFormat:@"%d", id_]];
  [this$0_ loginSucess];
}

- (id)initWithComFqHalcyonLogicLoginLogic:(ComFqHalcyonLogicLoginLogic *)outer$
                             withNSString:(NSString *)capture$0
                             withNSString:(NSString *)capture$1
                             withNSString:(NSString *)capture$2 {
  this$0_ = outer$;
  val$clientType_ = capture$0;
  val$clientVersion_ = capture$1;
  val$password_ = capture$2;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getRequestHeaders", NULL, "[Lcom.fq.http.async.FQHeader;", 0x1, NULL },
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogicLoginLogic:withNSString:withNSString:withNSString:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic.LoginLogic;", NULL,  },
    { "val$clientType_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$clientVersion_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$password_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicLoginLogic_$1 = { "$1", "com.fq.halcyon.logic", "LoginLogic", 0x8000, 4, methods, 4, fields, 0, NULL};
  return &_ComFqHalcyonLogicLoginLogic_$1;
}

@end
