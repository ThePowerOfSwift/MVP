//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetRecordTypeListLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetRecordTypeListLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "FileHelper.h"
#include "FileSystem.h"
#include "GetRecordTypeListLogic.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "Platform.h"
#include "RecordType.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 25
@implementation ComFqHalcyonLogic2GetRecordTypeListLogic


#line 30
- (id)initWithComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack:(id<ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack>)onCallBack {
  if (self = [super init]) {
    
#line 31
    self->onCallBack_ = onCallBack;
  }
  return self;
}

- (void)loadRecordTypesWithInt:(int)recordId {
  
#line 40
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_id" withId:[JavaLangInteger valueOfWithInt:recordId]];
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *uri = [NSString stringWithFormat:@"%@/record/item/get_record_item.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle *mHandle = [[ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle alloc] initWithComFqHalcyonLogic2GetRecordTypeListLogic:self withInt:recordId];
  if (ComFqLibPlatformPlatform_get_isNetWorkConnect_()) {
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle];
  }
  else {
    
#line 49
    NSString *cache = [ComFqLibFileHelper readStringWithNSString:[NSString stringWithFormat:@"%@%drecord.item", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getUserCachePath], recordId] withBoolean:YES];
    if (cache != nil && ![cache isEqual:@""]) {
      @try {
        [mHandle handleWithInt:0 withNSString:cache withInt:2 withId:[[FQJSONArray alloc] initWithNSString:cache]];
      }
      @catch (
#line 53
      FQJSONException *e) {
        [((FQJSONException *) nil_chk(e)) printStackTrace];
      }
    }
    else {
      
#line 57
      (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:uri withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle];
    }
  }
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2GetRecordTypeListLogic *)other {
  [super copyAllFieldsTo:other];
  other->mResultList_ = mResultList_;
  other->onCallBack_ = onCallBack_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack:", "GetRecordTypeListLogic", NULL, 0x1, NULL },
    { "loadRecordTypesWithInt:", "loadRecordTypes", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mResultList_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "onCallBack_", NULL, 0x2, "Lcom.fq.halcyon.logic2.GetRecordTypeListLogic$LoadRecordTypesCallBack;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordTypeListLogic = { "GetRecordTypeListLogic", "com.fq.halcyon.logic2", NULL, 0x1, 2, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordTypeListLogic;
}

@end

@interface ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "loadRecordTypesErrorWithInt:withNSString:", "loadRecordTypesError", "V", 0x401, NULL },
    { "loadRecordTypesResultWithInt:withJavaUtilArrayList:", "loadRecordTypesResult", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack = { "LoadRecordTypesCallBack", "com.fq.halcyon.logic2", "GetRecordTypeListLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack;
}

@end


#line 68
@implementation ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle


#line 72
- (id)initWithComFqHalcyonLogic2GetRecordTypeListLogic:(ComFqHalcyonLogic2GetRecordTypeListLogic *)outer$
                                               withInt:(int)recordId {
  this$0_ = outer$;
  if (self = [super init]) {
    
#line 73
    self->mRecordId_ = recordId;
  }
  return self;
}


#line 77
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 78
  [((id<ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack>) nil_chk(this$0_->onCallBack_)) loadRecordTypesErrorWithInt:code withNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
}


#line 82
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0 && type == 2) {
    this$0_->mResultList_ = [[JavaUtilArrayList alloc] init];
    FQJSONArray *jsonArr = (FQJSONArray *) check_class_cast(results, [FQJSONArray class]);
    int count = [((FQJSONArray *) nil_chk(jsonArr)) length];
    for (int i = 0; i < count; i++) {
      FQJSONObject *json = [jsonArr optJSONObjectWithInt:i];
      ComFqHalcyonEntityRecordType *item = [[ComFqHalcyonEntityRecordType alloc] init];
      [item setAtttributeByjsonWithFQJSONObject:json];
      [this$0_->mResultList_ addWithId:item];
    }
    [ComFqLibFileHelper saveFileWithNSString:[nil_chk(results) description] withNSString:[NSString stringWithFormat:@"%@%drecord.item", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getUserCachePath], mRecordId_] withBoolean:YES];
    [((id<ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack>) nil_chk(this$0_->onCallBack_)) loadRecordTypesResultWithInt:responseCode withJavaUtilArrayList:this$0_->mResultList_];
  }
  else {
    
#line 97
    [((id<ComFqHalcyonLogic2GetRecordTypeListLogic_LoadRecordTypesCallBack>) nil_chk(this$0_->onCallBack_)) loadRecordTypesErrorWithInt:responseCode withNSString:msg];
  }
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle *)other {
  [super copyAllFieldsTo:other];
  other->mRecordId_ = mRecordId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2GetRecordTypeListLogic:withInt:", "GetRecordItemHandle", NULL, 0x1, NULL },
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.GetRecordTypeListLogic;", NULL,  },
    { "mRecordId_", NULL, 0x2, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle = { "GetRecordItemHandle", "com.fq.halcyon.logic2", "GetRecordTypeListLogic", 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordTypeListLogic_GetRecordItemHandle;
}

@end
