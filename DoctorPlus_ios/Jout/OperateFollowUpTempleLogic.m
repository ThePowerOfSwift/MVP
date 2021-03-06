//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/OperateFollowUpTempleLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/OperateFollowUpTempleLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "FollowUpTemple.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "OnceFollowUpCycle.h"
#include "OperateFollowUpTempleLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 21
@implementation ComFqHalcyonLogic2OperateFollowUpTempleLogic


#line 52
- (id)initWithComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface:(id<ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface>)mIn
                                                          withComFqHalcyonEntityFollowUpTemple:(ComFqHalcyonEntityFollowUpTemple *)followUpTemple {
  if (self = [super init]) {
    mHandle_ =
#line 50
    [[ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicHandle alloc] initWithComFqHalcyonLogic2OperateFollowUpTempleLogic:self];
    
#line 53
    self->mInterface_ = mIn;
    
#line 54
    self->mFollowUpTemple_ = followUpTemple;
  }
  return self;
}


#line 57
- (void)CreateFollowUPTemple {
  
#line 58
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"followup_template_name" withId:[((ComFqHalcyonEntityFollowUpTemple *) nil_chk(mFollowUpTemple_)) getTempleName]];
  JavaUtilArrayList *mArrayList = [[JavaUtilArrayList alloc] init];
  mArrayList = [mFollowUpTemple_ getmArrayList];
  FQJSONArray *mArray = [[FQJSONArray alloc] init];
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(mArrayList)) size]; i++) {
    ComFqHalcyonEntityOnceFollowUpCycle *mCycle = [mArrayList getWithInt:i];
    FQJSONObject *mJsonObject = [[FQJSONObject alloc] init];
    @try {
      (void) [mJsonObject putWithNSString:@"item_name" withId:[((ComFqHalcyonEntityOnceFollowUpCycle *) nil_chk(mCycle)) getmItemName]];
      (void) [mJsonObject putWithNSString:@"item_value" withId:[mCycle getmItentValue]];
      (void) [mJsonObject putWithNSString:@"item_unit" withId:[mCycle getmItemUnit]];
      (void) [mArray putWithId:mJsonObject];
    }
    @catch (
#line 72
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  (void) [map putWithId:@"followup_template_items" withId:mArray];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonForDebugWithJavaUtilMap:map];
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString stringWithFormat:@"----------------%@", [((FQJSONObject *) nil_chk(json)) description]]];
  NSString *url = [NSString stringWithFormat:@"%@/timer/add_followup_template.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 81
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}


#line 84
- (void)ModifyFollowUpTemple {
  
#line 85
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"followup_template_name" withId:[((ComFqHalcyonEntityFollowUpTemple *) nil_chk(mFollowUpTemple_)) getTempleName]];
  (void) [map putWithId:@"followup_template_id" withId:[JavaLangInteger valueOfWithInt:[mFollowUpTemple_ getmTempleId]]];
  JavaUtilArrayList *mArrayList = [[JavaUtilArrayList alloc] init];
  mArrayList = [mFollowUpTemple_ getmArrayList];
  FQJSONArray *mArray = [[FQJSONArray alloc] init];
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(mArrayList)) size]; i++) {
    ComFqHalcyonEntityOnceFollowUpCycle *mCycle = [mArrayList getWithInt:i];
    FQJSONObject *mJsonObject = [[FQJSONObject alloc] init];
    @try {
      (void) [mJsonObject putWithNSString:@"item_name" withId:[((ComFqHalcyonEntityOnceFollowUpCycle *) nil_chk(mCycle)) getmItemName]];
      (void) [mJsonObject putWithNSString:@"item_value" withId:[mCycle getmItentValue]];
      (void) [mJsonObject putWithNSString:@"item_unit" withId:[mCycle getmItemUnit]];
      
#line 100
      if ([mCycle getmItemtId] != 0) {
        (void) [mJsonObject putWithNSString:@"item_id" withInt:[mCycle getmItemtId]];
      }
      
#line 104
      (void) [mArray putWithId:mJsonObject];
    }
    @catch (
#line 105
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  (void) [map putWithId:@"followup_template_items" withId:mArray];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonForDebugWithJavaUtilMap:map];
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString stringWithFormat:@"----------------%@", [((FQJSONObject *) nil_chk(json)) description]]];
  NSString *url = [NSString stringWithFormat:@"%@/timer/modify_followup_template.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 114
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2OperateFollowUpTempleLogic *)other {
  [super copyAllFieldsTo:other];
  other->mFollowUpTemple_ = mFollowUpTemple_;
  other->mHandle_ = mHandle_;
  other->mInterface_ = mInterface_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface:withComFqHalcyonEntityFollowUpTemple:", "OperateFollowUpTempleLogic", NULL, 0x1, NULL },
    { "CreateFollowUPTemple", NULL, "V", 0x1, NULL },
    { "ModifyFollowUpTemple", NULL, "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mFollowUpTemple_", NULL, 0x2, "Lcom.fq.halcyon.entity.FollowUpTemple;", NULL,  },
    { "mInterface_", NULL, 0x2, "Lcom.fq.halcyon.logic2.OperateFollowUpTempleLogic$OperateFollowUpTempleLogicInterface;", NULL,  },
    { "mHandle_", NULL, 0x2, "Lcom.fq.halcyon.logic2.OperateFollowUpTempleLogic$OperateFollowUpTempleLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2OperateFollowUpTempleLogic = { "OperateFollowUpTempleLogic", "com.fq.halcyon.logic2", NULL, 0x1, 3, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2OperateFollowUpTempleLogic;
}

@end

@interface ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onDataErrorWithInt:withNSString:", "onDataError", "V", 0x401, NULL },
    { "onDataReturn", NULL, "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface = { "OperateFollowUpTempleLogicInterface", "com.fq.halcyon.logic2", "OperateFollowUpTempleLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface;
}

@end


#line 31
@implementation ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicHandle


#line 34
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 35
  [((id<ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface>) nil_chk(this$0_->mInterface_)) onDataErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) description]];
}


#line 39
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    [((id<ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface>) nil_chk(this$0_->mInterface_)) onDataReturn];
  }
  else {
    
#line 44
    [((id<ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicInterface>) nil_chk(this$0_->mInterface_)) onDataErrorWithInt:responseCode withNSString:msg];
  }
}

- (id)initWithComFqHalcyonLogic2OperateFollowUpTempleLogic:(ComFqHalcyonLogic2OperateFollowUpTempleLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2OperateFollowUpTempleLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.OperateFollowUpTempleLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicHandle = { "OperateFollowUpTempleLogicHandle", "com.fq.halcyon.logic2", "OperateFollowUpTempleLogic", 0x0, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2OperateFollowUpTempleLogic_OperateFollowUpTempleLogicHandle;
}

@end
