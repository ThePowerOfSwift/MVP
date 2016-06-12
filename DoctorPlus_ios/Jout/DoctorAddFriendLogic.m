//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/DoctorAddFriendLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/DoctorAddFriendLogic.java"

#include "ApiSystem.h"
#include "DoctorAddFriendLogic.h"
#include "FQHttpParams.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "UriConstants.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"


#line 15
@implementation ComFqHalcyonLogic2DoctorAddFriendLogic


#line 51
- (id)initWithComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface:(id<ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface>)mIn
                                                                           withInt:(int)userId
                                                                           withInt:(int)friendId
                                                                           withInt:(int)type {
  if (self = [super init]) {
    mHandle_ =
#line 49
    [[ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicHandle alloc] initWithComFqHalcyonLogic2DoctorAddFriendLogic:self];
    
#line 52
    self->mInterface_ = mIn;
    
#line 53
    JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
    
#line 54
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:userId]];
    
#line 55
    (void) [map putWithId:@"friend_id_to_add" withId:[JavaLangInteger valueOfWithInt:friendId]];
    
#line 56
    (void) [map putWithId:@"type" withId:[JavaLangInteger valueOfWithInt:type]];
    
#line 57
    FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    
#line 58
    (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:[NSString stringWithFormat:@"%@/users/doctor_add_friend.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:mHandle_];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2DoctorAddFriendLogic *)other {
  [super copyAllFieldsTo:other];
  other->mHandle_ = mHandle_;
  other->mInterface_ = mInterface_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface:withInt:withInt:withInt:", "DoctorAddFriendLogic", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "FRIEND_FROM_NORMAL_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqHalcyonLogic2DoctorAddFriendLogic_FRIEND_FROM_NORMAL },
    { "FRIEND_FROM_ZXING_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqHalcyonLogic2DoctorAddFriendLogic_FRIEND_FROM_ZXING },
    { "mInterface_", NULL, 0x1, "Lcom.fq.halcyon.logic2.DoctorAddFriendLogic$DoctorAddFriendLogicInterface;", NULL,  },
    { "mHandle_", NULL, 0x1, "Lcom.fq.halcyon.logic2.DoctorAddFriendLogic$DoctorAddFriendLogicHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2DoctorAddFriendLogic = { "DoctorAddFriendLogic", "com.fq.halcyon.logic2", NULL, 0x1, 1, methods, 4, fields, 0, NULL};
  return &_ComFqHalcyonLogic2DoctorAddFriendLogic;
}

@end

@interface ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface : NSObject
@end

@implementation ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onDataReturn", NULL, "V", 0x401, NULL },
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface = { "DoctorAddFriendLogicInterface", "com.fq.halcyon.logic2", "DoctorAddFriendLogic", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface;
}

@end


#line 29
@implementation ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicHandle


#line 32
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 33
  [((id<ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface>) nil_chk(this$0_->mInterface_)) onErrorWithInt:code withJavaLangThrowable:e];
}


#line 37
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  if (responseCode == 0) {
    [((id<ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface>) nil_chk(this$0_->mInterface_)) onDataReturn];
  }
  else {
    
#line 42
    [((id<ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicInterface>) nil_chk(this$0_->mInterface_)) onErrorWithInt:responseCode withJavaLangThrowable:[[JavaLangThrowable alloc] initWithNSString:msg]];
  }
}

- (id)initWithComFqHalcyonLogic2DoctorAddFriendLogic:(ComFqHalcyonLogic2DoctorAddFriendLogic *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2DoctorAddFriendLogic:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.DoctorAddFriendLogic;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicHandle = { "DoctorAddFriendLogicHandle", "com.fq.halcyon.logic2", "DoctorAddFriendLogic", 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2DoctorAddFriendLogic_DoctorAddFriendLogicHandle;
}

@end
