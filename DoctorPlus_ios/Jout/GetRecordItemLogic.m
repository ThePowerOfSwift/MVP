//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetRecordItemLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetRecordItemLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "FileHelper.h"
#include "FileSystem.h"
#include "GetRecordItemLogic.h"
#include "HalcyonHttpResponseHandle.h"
#include "HttpRequestPotocol.h"
#include "IOSClass.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "Platform.h"
#include "RecordItem.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 24
@implementation ComFqHalcyonLogic2GetRecordItemLogic


#line 28
- (id)init {
  return [super init];
}


#line 31
- (id)initWithComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack:(id<ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack>)callback {
  if (self = [super init]) {
    
#line 32
    mCallback_ = callback;
  }
  return self;
}


#line 39
- (void)loadRecordItemWithInt:(int)recordInfoId {
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_info_id" withId:[JavaLangInteger valueOfWithInt:recordInfoId]];
  
#line 44
  NSString *url = [NSString stringWithFormat:@"%@/record/item/get_item_info.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  
#line 46
  HalcyonHttpResponseHandle *mHandle = [[ComFqHalcyonLogic2GetRecordItemLogic_$1 alloc] initWithComFqHalcyonLogic2GetRecordItemLogic:self withInt:recordInfoId];
  
#line 73
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:[ComFqLibJsonHelper createJsonWithJavaUtilMap:map]];
  if (ComFqLibPlatformPlatform_get_isNetWorkConnect_()) {
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle];
  }
  else {
    
#line 77
    NSString *cache = [ComFqLibFileHelper readStringWithNSString:[NSString stringWithFormat:@"%@%d", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getRecordCachePath], recordInfoId] withBoolean:YES];
    if (cache != nil && ![cache isEqual:@""]) {
      @try {
        [mHandle handleWithInt:0 withNSString:cache withInt:1 withId:[[FQJSONObject alloc] initWithNSString:cache]];
      }
      @catch (
#line 81
      FQJSONException *e) {
        [((FQJSONException *) nil_chk(e)) printStackTrace];
      }
    }
    else {
      
#line 85
      (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle];
    }
  }
}


#line 105
- (void)modifyRecordItemWithInt:(int)recordInfoId
                        withInt:(int)type
                         withId:(id)obj
withComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack:(id<ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack>)callback {
  
#line 106
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_info_id" withId:[JavaLangInteger valueOfWithInt:recordInfoId]];
  
#line 110
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  
#line 112
  @try {
    if (type == 1) {
      (void) [((FQJSONObject *) nil_chk(json)) putWithNSString:@"basic_info" withId:(NSString *) check_class_cast(obj, [NSString class])];
    }
    else
#line 115
    if (type == 2) {
      (void) [((FQJSONObject *) nil_chk(json)) putWithNSString:@"note_info" withId:((NSString *) check_class_cast(obj, [NSString class]))];
    }
    else
#line 117
    if (type == 3) {
      (void) [((FQJSONObject *) nil_chk(json)) putWithNSString:@"examItems" withId:(FQJSONArray *) check_class_cast(obj, [FQJSONArray class])];
    }
  }
  @catch (
#line 120
  JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  
#line 124
  NSString *url = [NSString stringWithFormat:@"%@/record/item/modify_item_info.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json];
  
#line 127
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:[[ComFqHalcyonLogic2GetRecordItemLogic_$2 alloc] initWithComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack:callback]];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2GetRecordItemLogic *)other {
  [super copyAllFieldsTo:other];
  other->mCallback_ = mCallback_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "GetRecordItemLogic", NULL, 0x1, NULL },
    { "initWithComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack:", "GetRecordItemLogic", NULL, 0x1, NULL },
    { "loadRecordItemWithInt:", "loadRecordItem", "V", 0x1, NULL },
    { "modifyRecordItemWithInt:withInt:withId:withComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack:", "modifyRecordItem", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mCallback_", NULL, 0x2, "Lcom.fq.halcyon.logic2.GetRecordItemLogic$RecordItemCallBack;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic = { "GetRecordItemLogic", "com.fq.halcyon.logic2", NULL, 0x1, 4, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic;
}

@end

@interface ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doRecordItemBackWithComFqHalcyonEntityRecordItem:", "doRecordItemBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack = { "RecordItemCallBack", "com.fq.halcyon.logic2", "GetRecordItemLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack;
}

@end

@interface ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doBackWithBoolean:", "doBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack = { "ModifyItemCallBack", "com.fq.halcyon.logic2", "GetRecordItemLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack;
}

@end

@implementation ComFqHalcyonLogic2GetRecordItemLogic_$1


#line 48
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 49
  [((id<ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack>) nil_chk(this$0_->mCallback_)) doRecordItemBackWithComFqHalcyonEntityRecordItem:nil];
}


#line 53
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 54
  if (responseCode == 0 && type == 1) {
    ComFqHalcyonEntityRecordItem *item = [[ComFqHalcyonEntityRecordItem alloc] init];
    [item setAtttributeByjsonWithFQJSONObject:(FQJSONObject *) check_class_cast(results, [FQJSONObject class])];
    [((id<ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack>) nil_chk(this$0_->mCallback_)) doRecordItemBackWithComFqHalcyonEntityRecordItem:item];
    
#line 59
    [((JavaLangThread *) [[JavaLangThread alloc] initWithJavaLangRunnable:[[ComFqHalcyonLogic2GetRecordItemLogic_$1_$1 alloc] initWithComFqHalcyonLogic2GetRecordItemLogic_$1:self withComFqHalcyonEntityRecordItem:item]]) start];
  }
  else {
    
#line 68
    [((id<ComFqHalcyonLogic2GetRecordItemLogic_RecordItemCallBack>) nil_chk(this$0_->mCallback_)) doRecordItemBackWithComFqHalcyonEntityRecordItem:nil];
  }
}

- (id)initWithComFqHalcyonLogic2GetRecordItemLogic:(ComFqHalcyonLogic2GetRecordItemLogic *)outer$
                                           withInt:(int)capture$0 {
  this$0_ = outer$;
  val$recordInfoId_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2GetRecordItemLogic:withInt:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.GetRecordItemLogic;", NULL,  },
    { "val$recordInfoId_", NULL, 0x1012, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic_$1 = { "$1", "com.fq.halcyon.logic2", "GetRecordItemLogic", 0x8000, 3, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic_$1;
}

@end

@implementation ComFqHalcyonLogic2GetRecordItemLogic_$1_$1


#line 60
- (void)run {
  
#line 61
  NSString *localPath = [NSString stringWithFormat:@"%@%d", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getRecordCachePath], this$0_->val$recordInfoId_];
  [ComFqLibFileHelper saveFileWithNSString:[((FQJSONObject *) nil_chk([((ComFqHalcyonEntityRecordItem *) nil_chk(val$item_)) getJson])) description] withNSString:localPath withBoolean:YES];
}

- (id)initWithComFqHalcyonLogic2GetRecordItemLogic_$1:(ComFqHalcyonLogic2GetRecordItemLogic_$1 *)outer$
                     withComFqHalcyonEntityRecordItem:(ComFqHalcyonEntityRecordItem *)capture$0 {
  this$0_ = outer$;
  val$item_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2GetRecordItemLogic_$1:withComFqHalcyonEntityRecordItem:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.GetRecordItemLogic$1;", NULL,  },
    { "val$item_", NULL, 0x1012, "Lcom.fq.halcyon.entity.RecordItem;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic_$1_$1 = { "$1", "com.fq.halcyon.logic2", "GetRecordItemLogic$$1", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic_$1_$1;
}

@end

@implementation ComFqHalcyonLogic2GetRecordItemLogic_$2


#line 128
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 129
  [((id<ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack>) nil_chk(val$callback_)) doBackWithBoolean:NO];
}


#line 133
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 134
  [((id<ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack>) nil_chk(val$callback_)) doBackWithBoolean:responseCode == 0];
}

- (id)initWithComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack:(id<ComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2GetRecordItemLogic_ModifyItemCallBack:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$callback_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.GetRecordItemLogic$ModifyItemCallBack;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2GetRecordItemLogic_$2 = { "$2", "com.fq.halcyon.logic2", "GetRecordItemLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2GetRecordItemLogic_$2;
}

@end