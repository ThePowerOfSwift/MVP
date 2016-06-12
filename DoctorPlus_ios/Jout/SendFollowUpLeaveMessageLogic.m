//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SendFollowUpLeaveMessageLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SendFollowUpLeaveMessageLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "SendFollowUpLeaveMessageLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 16
@implementation ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic


#line 47
- (id)initWithComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface:(id<ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface>)mIn {
  if (self = [super init]) {
    mHandle_ =
#line 45
    [[ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicHandle alloc] initWithComFqHalcyonLogic2SendFollowUpLeaveMessageLogic:self];
    
#line 48
    self->mInterface_ = mIn;
  }
  return self;
}


#line 51
- (void)submitMessageWithNSString:(NSString *)message
                          withInt:(int)mTimerId {
  
#line 52
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"timer_id" withId:[JavaLangInteger valueOfWithInt:mTimerId]];
  (void) [map putWithId:@"note" withId:message];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonForDebugWithJavaUtilMap:map];
  NSString *url = [NSString stringWithFormat:@"%@/timer/add_followup_note.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 59
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->mInterface_ = mInterface_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface:", "SendFollowUpLeaveMessageLogic", NULL, 0x1, NULL },
    { "submitMessageWithNSString:withInt:", "submitMessage", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mInterface_", NULL, 0x2, "Lcom.fq.halcyon.logic2.SendFollowUpLeaveMessageLogic$SendFollowUpLeaveMessageLogicInterface;", NULL,  },
    { "mHandle_", NULL, 0x2, "Lcom.fq.halcyon.logic2.SendFollowUpLeaveMessageLogic$SendFollowUpLeaveMessageLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic = { "SendFollowUpLeaveMessageLogic", "com.fq.halcyon.logic2", NULL, 0x1, 2, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic;
}

@end

@interface ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onSubmitMessageErrorWithInt:withNSString:", "onSubmitMessageError", "V", 0x401, NULL },
    { "onSubmitMessageSuccess", NULL, "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface = { "SendFollowUpLeaveMessageLogicInterface", "com.fq.halcyon.logic2", "SendFollowUpLeaveMessageLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface;
}

@end


#line 26
@implementation ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicHandle


#line 29
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 30
  [((id<ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface>) nil_chk(this$0_->mInterface_)) onSubmitMessageErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) description]];
}


#line 34
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    [((id<ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface>) nil_chk(this$0_->mInterface_)) onSubmitMessageSuccess];
  }
  else {
    
#line 39
    [((id<ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicInterface>) nil_chk(this$0_->mInterface_)) onSubmitMessageErrorWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2SendFollowUpLeaveMessageLogic:(ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2SendFollowUpLeaveMessageLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.SendFollowUpLeaveMessageLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicHandle = { "SendFollowUpLeaveMessageLogicHandle", "com.fq.halcyon.logic2", "SendFollowUpLeaveMessageLogic", 0x0, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2SendFollowUpLeaveMessageLogic_SendFollowUpLeaveMessageLogicHandle;
}

@end
