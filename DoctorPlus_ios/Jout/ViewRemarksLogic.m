//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ViewRemarksLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ViewRemarksLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "Remark.h"
#include "UriConstants.h"
#include "User.h"
#include "ViewRemarksLogic.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"


#line 23
@implementation ComFqHalcyonLogic2ViewRemarksLogic


#line 40
- (id)initWithInt:(int)timerId
withComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack:(id<ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack>)onCallBack {
  if (self = [super init]) {
    mRemarkList_ =
#line 26
    [[JavaUtilArrayList alloc] init];
    mHandle_ =
#line 80
    [[ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicHandle alloc] initWithComFqHalcyonLogic2ViewRemarksLogic:self];
    
#line 41
    self->onCallBack_ = onCallBack;
    
#line 42
    JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
    
#line 43
    (void) [map putWithId:@"timer_id" withId:[JavaLangInteger valueOfWithInt:timerId]];
    
#line 44
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
    
#line 45
    FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    
#line 46
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/timer/view_remarks.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2ViewRemarksLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->mRemarkList_ = mRemarkList_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:withComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack:", "ViewRemarksLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mRemarkList_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "onCallBack_", NULL, 0x1, "Lcom.fq.halcyon.logic2.ViewRemarksLogic$ViewRemarksLogicCallBack;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.ViewRemarksLogic$ViewRemarksLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ViewRemarksLogic = { "ViewRemarksLogic", "com.fq.halcyon.logic2", NULL, 0x1, 1, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2ViewRemarksLogic;
}

@end

@interface ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorCallBackWithInt:withNSString:", "onErrorCallBack", "V", 0x401, NULL },
    { "onSuccessCallBackWithInt:withJavaUtilList:", "onSuccessCallBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack = { "ViewRemarksLogicCallBack", "com.fq.halcyon.logic2", "ViewRemarksLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack;
}

@end


#line 49
@implementation ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicHandle


#line 52
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 53
  [((JavaLangThrowable *) nil_chk(e)) printStackTrace];
  [((id<ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack>) nil_chk(this$0_->onCallBack_)) onErrorCallBackWithInt:code withNSString:[e getMessage]];
}


#line 58
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    FQJSONObject *jsonObj = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    @try {
      FQJSONArray *jsonArray = [((FQJSONObject *) nil_chk(jsonObj)) getJSONArrayWithNSString:@"timers"];
      int count = [((FQJSONArray *) nil_chk(jsonArray)) length];
      for (int i = 0; i < count; i++) {
        ComFqHalcyonEntityRemark *mRemark = [[ComFqHalcyonEntityRemark alloc] init];
        FQJSONObject *item = (FQJSONObject *) check_class_cast([jsonArray getWithInt:i], [FQJSONObject class]);
        [mRemark setAtttributeByjsonWithFQJSONObject:item];
        [((id<JavaUtilList>) nil_chk(this$0_->mRemarkList_)) addWithId:mRemark];
      }
      [((id<ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicCallBack>) nil_chk(this$0_->onCallBack_)) onSuccessCallBackWithInt:responseCode withJavaUtilList:this$0_->mRemarkList_];
    }
    @catch (
#line 72
    FQJSONException *e) {
      
#line 74
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
}

- (id)initWithComFqHalcyonLogic2ViewRemarksLogic:(ComFqHalcyonLogic2ViewRemarksLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2ViewRemarksLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.ViewRemarksLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicHandle = { "ViewRemarksLogicHandle", "com.fq.halcyon.logic2", "ViewRemarksLogic", 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2ViewRemarksLogic_ViewRemarksLogicHandle;
}

@end