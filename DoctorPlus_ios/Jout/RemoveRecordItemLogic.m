//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/RemoveRecordItemLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/RemoveRecordItemLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "RemoveRecordItemLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 13
@implementation ComFqHalcyonLogic2RemoveRecordItemLogic


#line 17
- (id)initWithComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack:(id<ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack>)callback {
  if (self = [super init]) {
    
#line 18
    mCallback_ = callback;
  }
  return self;
}


#line 21
- (void)removeRecordItemWithInt:(int)itemId {
  
#line 22
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  (void) [map putWithId:@"record_item_id" withId:[JavaLangInteger valueOfWithInt:itemId]];
  
#line 26
  NSString *url = [NSString stringWithFormat:@"%@/record/item/delete.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:[ComFqLibJsonHelper createJsonForDebugWithJavaUtilMap:map]];
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:[[ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemHandler alloc] initWithComFqHalcyonLogic2RemoveRecordItemLogic:self withInt:itemId]];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2RemoveRecordItemLogic *)other {
  [super copyAllFieldsTo:other];
  other->mCallback_ = mCallback_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack:", "RemoveRecordItemLogic", NULL, 0x1, NULL },
    { "removeRecordItemWithInt:", "removeRecordItem", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mCallback_", NULL, 0x2, "Lcom.fq.halcyon.logic2.RemoveRecordItemLogic$RemoveItemCallBack;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RemoveRecordItemLogic = { "RemoveRecordItemLogic", "com.fq.halcyon.logic2", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2RemoveRecordItemLogic;
}

@end


#line 31
@implementation ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemHandler


#line 34
- (id)initWithComFqHalcyonLogic2RemoveRecordItemLogic:(ComFqHalcyonLogic2RemoveRecordItemLogic *)outer$
                                              withInt:(int)id_ {
  this$0_ = outer$;
  if (self = [super init]) {
    
#line 35
    itemId_ = id_;
  }
  return self;
}


#line 39
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 40
  if (this$0_->mCallback_ != nil) [this$0_->mCallback_ doRemovebackWithInt:itemId_ withBoolean:NO];
}


#line 44
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 45
  if (this$0_->mCallback_ != nil) [this$0_->mCallback_ doRemovebackWithInt:itemId_ withBoolean:responseCode == 0];
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemHandler *)other {
  [super copyAllFieldsTo:other];
  other->itemId_ = itemId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2RemoveRecordItemLogic:withInt:", "RemoveItemHandler", NULL, 0x1, NULL },
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.RemoveRecordItemLogic;", NULL,  },
    { "itemId_", NULL, 0x2, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemHandler = { "RemoveItemHandler", "com.fq.halcyon.logic2", "RemoveRecordItemLogic", 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemHandler;
}

@end

@interface ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack : NSObject
@end

@implementation ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doRemovebackWithInt:withBoolean:", "doRemoveback", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack = { "RemoveItemCallBack", "com.fq.halcyon.logic2", "RemoveRecordItemLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack;
}

@end
