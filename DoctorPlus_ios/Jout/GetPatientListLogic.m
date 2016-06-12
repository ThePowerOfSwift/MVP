//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetPatientListLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetPatientListLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "GetPatientListLogic.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "Patient.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 21
@implementation ComFqHalcyonLogic2GetPatientListLogic


#line 32
- (id)initWithComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack:(id<ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack>)onCallBack {
  if (self = [super init]) {
    
#line 33
    self->onCallBack_ = onCallBack;
    
#line 34
    medicalList_ = [[JavaUtilArrayList alloc] init];
    
#line 35
    mHandle_ = [[ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListHandle alloc] initWithComFqHalcyonLogic2GetPatientListLogic:self];
  }
  return self;
}


#line 38
- (void)getMedicalList {
  
#line 39
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *uri = [NSString stringWithFormat:@"%@/patient/get_patient_list.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 44
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2GetPatientListLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->medicalList_ = medicalList_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack:", "GetPatientListLogic", NULL, 0x1, NULL },
    { "getMedicalList", NULL, "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "medicalList_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "onCallBack_", NULL, 0x1, "Lcom.fq.halcyon.logic2.GetPatientListLogic$GetMedicalListCallBack;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.GetPatientListLogic$GetMedicalListHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetPatientListLogic = { "GetPatientListLogic", "com.fq.halcyon.logic2", NULL, 0x1, 2, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetPatientListLogic;
}

@end

@interface ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onGetMedicalListErrorWithInt:withNSString:", "onGetMedicalListError", "V", 0x401, NULL },
    { "onGetMedicalListResultWithJavaUtilArrayList:", "onGetMedicalListResult", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack = { "GetMedicalListCallBack", "com.fq.halcyon.logic2", "GetPatientListLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack;
}

@end


#line 47
@implementation ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListHandle


#line 50
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 51
  [((id<ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack>) nil_chk(this$0_->onCallBack_)) onGetMedicalListErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
}


#line 55
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0 && type == 2) {
    FQJSONArray *jsonArr = (FQJSONArray *) check_class_cast(results, [FQJSONArray class]);
    int count = [((FQJSONArray *) nil_chk(jsonArr)) length];
    for (int i = 0; i < count; i++) {
      @try {
        FQJSONObject *obj = [jsonArr getJSONObjectWithInt:i];
        ComFqHalcyonEntityPatient *medical = [[ComFqHalcyonEntityPatient alloc] init];
        [medical setAtttributeByjsonWithFQJSONObject:obj];
        [((JavaUtilArrayList *) nil_chk(this$0_->medicalList_)) addWithId:medical];
        [((id<ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack>) nil_chk(this$0_->onCallBack_)) onGetMedicalListResultWithJavaUtilArrayList:this$0_->medicalList_];
      }
      @catch (
#line 67
      FQJSONException *e) {
        [((id<ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack>) nil_chk(this$0_->onCallBack_)) onGetMedicalListErrorWithInt:responseCode withNSString:[((FQJSONException *) nil_chk(e)) getMessage]];
      }
    }
  }
  else {
    [((id<ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListCallBack>) nil_chk(this$0_->onCallBack_)) onGetMedicalListErrorWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2GetPatientListLogic:(ComFqHalcyonLogic2GetPatientListLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2GetPatientListLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.GetPatientListLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListHandle = { "GetMedicalListHandle", "com.fq.halcyon.logic2", "GetPatientListLogic", 0x0, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetPatientListLogic_GetMedicalListHandle;
}

@end