//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/AnnualFreeLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/AnnualFreeLogic.java"

#include "AnnualFreeLogic.h"
#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 16
@implementation ComFqHalcyonLogic2AnnualFreeLogic


#line 47
- (id)initWithComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface:(id<ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface>)mIn
                                                                 withInt:(int)price {
  if (self = [super init]) {
    mHandle_ =
#line 45
    [[ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicHandle alloc] initWithComFqHalcyonLogic2AnnualFreeLogic:self];
    
#line 48
    self->mInterface_ = mIn;
    
#line 49
    JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
    
#line 50
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
    
#line 51
    (void) [map putWithId:@"annual_fee" withId:[JavaLangInteger valueOfWithInt:price]];
    
#line 52
    FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    
#line 53
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/users/set_annual_fee.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2AnnualFreeLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->mInterface_ = mInterface_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface:withInt:", "AnnualFreeLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mInterface_", NULL, 0x1, "Lcom.fq.halcyon.logic2.AnnualFreeLogic$AnnualFreeLogicInterface;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.AnnualFreeLogic$AnnualFreeLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AnnualFreeLogic = { "AnnualFreeLogic", "com.fq.halcyon.logic2", NULL, 0x1, 1, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2AnnualFreeLogic;
}

@end

@interface ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onDataReturnWithInt:withNSString:", "onDataReturn", "V", 0x401, NULL },
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface = { "AnnualFreeLogicInterface", "com.fq.halcyon.logic2", "AnnualFreeLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface;
}

@end


#line 26
@implementation ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicHandle


#line 29
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 30
  [((id<ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface>) nil_chk(this$0_->mInterface_)) onErrorWithInt:code withJavaLangThrowable:e];
}


#line 34
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    
#line 39
    [((id<ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicInterface>) nil_chk(this$0_->mInterface_)) onDataReturnWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2AnnualFreeLogic:(ComFqHalcyonLogic2AnnualFreeLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2AnnualFreeLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.AnnualFreeLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicHandle = { "AnnualFreeLogicHandle", "com.fq.halcyon.logic2", "AnnualFreeLogic", 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2AnnualFreeLogic_AnnualFreeLogicHandle;
}

@end
