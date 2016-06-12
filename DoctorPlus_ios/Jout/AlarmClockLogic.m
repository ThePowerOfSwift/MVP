//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/AlarmClockLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/AlarmClockLogic.java"

#include "AlarmClock.h"
#include "AlarmClockLogic.h"
#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"


#line 23
@implementation ComFqHalcyonLogic2AlarmClockLogic


#line 34
- (id)initWithComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack:(id<ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack>)onCallBack {
  if (self = [super init]) {
    mClockList_ =
#line 25
    [[JavaUtilArrayList alloc] init];
    mHandle_ =
#line 77
    [[ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicHandle alloc] initWithComFqHalcyonLogic2AlarmClockLogic:self];
    
#line 35
    self->onCallBack_ = onCallBack;
    
#line 36
    JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
    
#line 37
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
    
#line 38
    FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    
#line 39
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/timer/my_timers_future.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2AlarmClockLogic *)other {
  [super copyAllFieldsTo:other];
  other->mClockList_ = mClockList_;
  other->mHandle_ = mHandle_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack:", "AlarmClockLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mClockList_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "onCallBack_", NULL, 0x1, "Lcom.fq.halcyon.logic2.AlarmClockLogic$AlarmClockLogicCallBack;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.AlarmClockLogic$AlarmClockLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AlarmClockLogic = { "AlarmClockLogic", "com.fq.halcyon.logic2", NULL, 0x1, 1, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2AlarmClockLogic;
}

@end

@interface ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorCallBackWithInt:withNSString:", "onErrorCallBack", "V", 0x401, NULL },
    { "onResultCallBackWithInt:", "onResultCallBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack = { "AlarmClockLogicCallBack", "com.fq.halcyon.logic2", "AlarmClockLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack;
}

@end


#line 42
@implementation ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicHandle


#line 45
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 46
  if (ComFqLibToolsConstants_get_alarms_() == nil) (void) ComFqLibToolsConstants_set_alarms_([[JavaUtilArrayList alloc] init]);
  [((id<ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack>) nil_chk(this$0_->onCallBack_)) onErrorCallBackWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
}


#line 51
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    if (ComFqLibToolsConstants_get_alarms_() == nil) {
      (void) ComFqLibToolsConstants_set_alarms_([[JavaUtilArrayList alloc] init]);
    }
    FQJSONObject *jsonObj = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    @try {
      FQJSONArray *jsonArray = [((FQJSONObject *) nil_chk(jsonObj)) getJSONArrayWithNSString:@"timers"];
      int count = [((FQJSONArray *) nil_chk(jsonArray)) length];
      [((JavaUtilArrayList *) nil_chk(ComFqLibToolsConstants_get_alarms_())) clear];
      for (int i = 0; i < count; i++) {
        ComFqHalcyonEntityAlarmClock *alarmClock = [[ComFqHalcyonEntityAlarmClock alloc] init];
        [alarmClock setAtttributeByjsonWithFQJSONObject:[jsonArray getJSONObjectWithInt:i]];
        [ComFqLibToolsConstants_get_alarms_() addWithId:alarmClock];
      }
      [((id<ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicCallBack>) nil_chk(this$0_->onCallBack_)) onResultCallBackWithInt:responseCode];
    }
    @catch (
#line 68
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  else {
    
#line 72
    if (ComFqLibToolsConstants_get_alarms_() == nil) (void) ComFqLibToolsConstants_set_alarms_([[JavaUtilArrayList alloc] init]);
  }
}

- (id)initWithComFqHalcyonLogic2AlarmClockLogic:(ComFqHalcyonLogic2AlarmClockLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2AlarmClockLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.AlarmClockLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicHandle = { "AlarmClockLogicHandle", "com.fq.halcyon.logic2", "AlarmClockLogic", 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2AlarmClockLogic_AlarmClockLogicHandle;
}

@end
