//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/FollowUpTempleListLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/FollowUpTempleListLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "FollowUpTemple.h"
#include "FollowUpTempleListLogic.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 19
@implementation ComFqHalcyonLogic2FollowUpTempleListLogic


#line 59
- (void)getTempleList {
  
#line 60
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonForDebugWithJavaUtilMap:map];
  NSString *url = [NSString stringWithFormat:@"%@/timer/search_followup_template.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 65
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}


#line 68
- (id)initWithComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface:(id<ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface>)mIn {
  if (self = [super init]) {
    mTempleList_ =
#line 28
    [[JavaUtilArrayList alloc] init];
    mHandle_ =
#line 57
    [[ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicHandle alloc] initWithComFqHalcyonLogic2FollowUpTempleListLogic:self];
    
#line 69
    self->mInterface_ = mIn;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2FollowUpTempleListLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->mInterface_ = mInterface_;
  other->mTempleList_ = mTempleList_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getTempleList", NULL, "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface:", "FollowUpTempleListLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mInterface_", NULL, 0x2, "Lcom.fq.halcyon.logic2.FollowUpTempleListLogic$FollowUpTempleListLogicInterface;", NULL,  },
    { "mTempleList_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "mHandle_", NULL, 0x2, "Lcom.fq.halcyon.logic2.FollowUpTempleListLogic$FollowUpTempleListLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2FollowUpTempleListLogic = { "FollowUpTempleListLogic", "com.fq.halcyon.logic2", NULL, 0x1, 2, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2FollowUpTempleListLogic;
}

@end

@interface ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onDataErrorWithInt:withNSString:", "onDataError", "V", 0x401, NULL },
    { "onDataReturnWithJavaUtilArrayList:", "onDataReturn", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface = { "FollowUpTempleListLogicInterface", "com.fq.halcyon.logic2", "FollowUpTempleListLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface;
}

@end


#line 30
@implementation ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicHandle


#line 33
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 34
  [((id<ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface>) nil_chk(this$0_->mInterface_)) onDataErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) description]];
}


#line 38
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    FQJSONObject *mJsonObject = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    FQJSONArray *mTempleArrary = [((FQJSONObject *) nil_chk(mJsonObject)) optJSONArrayWithNSString:@"templates"];
    [((JavaUtilArrayList *) nil_chk(this$0_->mTempleList_)) clear];
    for (int i = 0; i < [((FQJSONArray *) nil_chk(mTempleArrary)) length]; i++) {
      ComFqHalcyonEntityFollowUpTemple *mFollowUpTemple = [[ComFqHalcyonEntityFollowUpTemple alloc] init];
      [mFollowUpTemple setAtttributeByjsonWithFQJSONObject:[mTempleArrary optJSONObjectWithInt:i]];
      [this$0_->mTempleList_ addWithId:mFollowUpTemple];
    }
    [((id<ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface>) nil_chk(this$0_->mInterface_)) onDataReturnWithJavaUtilArrayList:this$0_->mTempleList_];
  }
  else {
    
#line 51
    [((id<ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicInterface>) nil_chk(this$0_->mInterface_)) onDataErrorWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2FollowUpTempleListLogic:(ComFqHalcyonLogic2FollowUpTempleListLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2FollowUpTempleListLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.FollowUpTempleListLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicHandle = { "FollowUpTempleListLogicHandle", "com.fq.halcyon.logic2", "FollowUpTempleListLogic", 0x0, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2FollowUpTempleListLogic_FollowUpTempleListLogicHandle;
}

@end
