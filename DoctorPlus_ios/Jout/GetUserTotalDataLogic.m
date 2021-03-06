//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic/GetUserTotalDataLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic/GetUserTotalDataLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "GetUserTotalDataLogic.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 14
@implementation ComFqHalcyonLogicGetUserTotalDataLogic

- (void)requestUserTotalDataWithComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback:(id<ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback>)callback {
  
#line 17
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:[ComFqLibJsonHelper createJsonWithJavaUtilMap:map]];
  NSString *url = [NSString stringWithFormat:@"%@/record/friend_recordItem_count.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 22
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:[[ComFqHalcyonLogicGetUserTotalDataLogic_$1 alloc] initWithComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback:callback]];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "requestUserTotalDataWithComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback:", "requestUserTotalData", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicGetUserTotalDataLogic = { "GetUserTotalDataLogic", "com.fq.halcyon.logic", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogicGetUserTotalDataLogic;
}

@end

@interface ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback : NSObject
@end

@implementation ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "userDataCallbackWithInt:withInt:withInt:withInt:", "userDataCallback", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback = { "OnUserTotalDataCallback", "com.fq.halcyon.logic", "GetUserTotalDataLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback;
}

@end

@implementation ComFqHalcyonLogicGetUserTotalDataLogic_$1


#line 23
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 24
  if (val$callback_ != nil) {
    int friend_ = ComFqLibToolsConstants_get_contactsList_() == nil ? 0 : [ComFqLibToolsConstants_get_contactsList_() size];
    [val$callback_ userDataCallbackWithInt:0 withInt:0 withInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getDPMoney] withInt:friend_];
  }
}


#line 31
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 32
  if (val$callback_ != nil) {
    if (responseCode == 0 && type == 1) {
      FQJSONObject *obj = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
      int patient = [((FQJSONObject *) nil_chk(obj)) optIntWithNSString:@"countP"];
      int record = [obj optIntWithNSString:@"countRecord"];
      
#line 38
      int friend_ = [obj optIntWithNSString:@"countT"];
      [val$callback_ userDataCallbackWithInt:patient withInt:record withInt:0 withInt:friend_];
    }
    else {
      
#line 41
      int friend_ = ComFqLibToolsConstants_get_contactsList_() == nil ? 0 : [ComFqLibToolsConstants_get_contactsList_() size];
      [val$callback_ userDataCallbackWithInt:0 withInt:0 withInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getDPMoney] withInt:friend_];
    }
  }
}

- (id)initWithComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback:(id<ComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogicGetUserTotalDataLogic_OnUserTotalDataCallback:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$callback_", NULL, 0x1012, "Lcom.fq.halcyon.logic.GetUserTotalDataLogic$OnUserTotalDataCallback;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogicGetUserTotalDataLogic_$1 = { "$1", "com.fq.halcyon.logic", "GetUserTotalDataLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogicGetUserTotalDataLogic_$1;
}

@end
