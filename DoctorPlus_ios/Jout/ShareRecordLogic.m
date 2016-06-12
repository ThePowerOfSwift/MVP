//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ShareRecordLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ShareRecordLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "ShareRecordLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 20
@implementation ComFqHalcyonLogic2ShareRecordLogic


#line 26
- (id)initWithComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack:(id<ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack>)onCallBack {
  if (self = [super init]) {
    
#line 27
    self->onCallBack_ = onCallBack;
    
#line 28
    mHandle_ = [[ComFqHalcyonLogic2ShareRecordLogic_ShareRecordHandle alloc] initWithComFqHalcyonLogic2ShareRecordLogic:self];
  }
  return self;
}


#line 36
- (void)sharePatientWithInt:(int)patientId
      withJavaUtilArrayList:(JavaUtilArrayList *)doctorIds {
  
#line 37
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  FQJSONArray *array = [[FQJSONArray alloc] initWithJavaUtilCollection:doctorIds];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"patient_id" withId:[JavaLangInteger valueOfWithInt:patientId]];
  (void) [map putWithId:@"doctor_ids" withId:array];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *uri = [NSString stringWithFormat:@"%@/record/share.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 45
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}


#line 53
- (void)shareRecordWithJavaUtilArrayList:(JavaUtilArrayList *)recordIds
                   withJavaUtilArrayList:(JavaUtilArrayList *)doctorIds {
  
#line 54
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  FQJSONArray *recordArr = [[FQJSONArray alloc] initWithJavaUtilCollection:recordIds];
  FQJSONArray *doctorArr = [[FQJSONArray alloc] initWithJavaUtilCollection:doctorIds];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_ids" withId:recordArr];
  (void) [map putWithId:@"doctor_ids" withId:doctorArr];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *uri = [NSString stringWithFormat:@"%@/record/share.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 63
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}


#line 71
- (void)shareRecordItemWithJavaUtilArrayList:(JavaUtilArrayList *)recordItemIds
                       withJavaUtilArrayList:(JavaUtilArrayList *)doctorIds {
  
#line 72
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  FQJSONArray *recordArr = [[FQJSONArray alloc] initWithJavaUtilCollection:recordItemIds];
  FQJSONArray *doctorArr = [[FQJSONArray alloc] initWithJavaUtilCollection:doctorIds];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_item_ids" withId:recordArr];
  (void) [map putWithId:@"doctor_ids" withId:doctorArr];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *uri = [NSString stringWithFormat:@"%@/record/share.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 81
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2ShareRecordLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack:", "ShareRecordLogic", NULL, 0x1, NULL },
    { "sharePatientWithInt:withJavaUtilArrayList:", "sharePatient", "V", 0x1, NULL },
    { "shareRecordWithJavaUtilArrayList:withJavaUtilArrayList:", "shareRecord", "V", 0x1, NULL },
    { "shareRecordItemWithJavaUtilArrayList:withJavaUtilArrayList:", "shareRecordItem", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "onCallBack_", NULL, 0x2, "Lcom.fq.halcyon.logic2.ShareRecordLogic$ShareRecordCallBack;", NULL,  },
    { "mHandle_", NULL, 0x2, "Lcom.fq.halcyon.logic2.ShareRecordLogic$ShareRecordHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ShareRecordLogic = { "ShareRecordLogic", "com.fq.halcyon.logic2", NULL, 0x1, 4, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2ShareRecordLogic;
}

@end

@interface ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "shareRecordErrorWithInt:withNSString:", "shareRecordError", "V", 0x401, NULL },
    { "shareRecordSuccessWithInt:withNSString:", "shareRecordSuccess", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack = { "ShareRecordCallBack", "com.fq.halcyon.logic2", "ShareRecordLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack;
}

@end


#line 89
@implementation ComFqHalcyonLogic2ShareRecordLogic_ShareRecordHandle


#line 92
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 93
  [((id<ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack>) nil_chk(this$0_->onCallBack_)) shareRecordErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
}


#line 97
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    [((id<ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack>) nil_chk(this$0_->onCallBack_)) shareRecordSuccessWithInt:responseCode withNSString:msg];
  }
  else {
    
#line 102
    [((id<ComFqHalcyonLogic2ShareRecordLogic_ShareRecordCallBack>) nil_chk(this$0_->onCallBack_)) shareRecordErrorWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2ShareRecordLogic:(ComFqHalcyonLogic2ShareRecordLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2ShareRecordLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.ShareRecordLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ShareRecordLogic_ShareRecordHandle = { "ShareRecordHandle", "com.fq.halcyon.logic2", "ShareRecordLogic", 0x0, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2ShareRecordLogic_ShareRecordHandle;
}

@end
