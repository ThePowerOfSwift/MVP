//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/PostRemarkLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/PostRemarkLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "PostRemarkLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 20
@implementation ComFqHalcyonLogic2PostRemarkLogic


#line 35
- (id)initWithInt:(int)timerId
     withNSString:(NSString *)remark
withComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack:(id<ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack>)onCallBack {
  if (self = [super init]) {
    mHandle_ =
#line 62
    [[ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicHandle alloc] initWithComFqHalcyonLogic2PostRemarkLogic:self];
    
#line 36
    self->onCallBack_ = onCallBack;
    
#line 37
    JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
    
#line 38
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
    
#line 39
    (void) [map putWithId:@"timer_id" withId:[JavaLangInteger valueOfWithInt:timerId]];
    
#line 40
    (void) [map putWithId:@"remark" withId:remark];
    
#line 41
    FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    
#line 42
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/timer/post.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2PostRemarkLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:withNSString:withComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack:", "PostRemarkLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "onCallBack_", NULL, 0x1, "Lcom.fq.halcyon.logic2.PostRemarkLogic$PostRemarkLogicCallBack;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.PostRemarkLogic$PostRemarkLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2PostRemarkLogic = { "PostRemarkLogic", "com.fq.halcyon.logic2", NULL, 0x1, 1, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2PostRemarkLogic;
}

@end

@interface ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorCallBackWithInt:withNSString:", "onErrorCallBack", "V", 0x401, NULL },
    { "onSuccessCallBackWithInt:withNSString:", "onSuccessCallBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack = { "PostRemarkLogicCallBack", "com.fq.halcyon.logic2", "PostRemarkLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack;
}

@end


#line 45
@implementation ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicHandle


#line 48
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 49
  [((JavaLangThrowable *) nil_chk(e)) printStackTrace];
  [((id<ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack>) nil_chk(this$0_->onCallBack_)) onErrorCallBackWithInt:code withNSString:[e getMessage]];
}


#line 54
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    [((id<ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicCallBack>) nil_chk(this$0_->onCallBack_)) onSuccessCallBackWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2PostRemarkLogic:(ComFqHalcyonLogic2PostRemarkLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2PostRemarkLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.PostRemarkLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicHandle = { "PostRemarkLogicHandle", "com.fq.halcyon.logic2", "PostRemarkLogic", 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2PostRemarkLogic_PostRemarkLogicHandle;
}

@end
