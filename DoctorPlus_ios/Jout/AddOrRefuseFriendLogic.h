//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/AddOrRefuseFriendLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2AddOrRefuseFriendLogic_H_
#define _ComFqHalcyonLogic2AddOrRefuseFriendLogic_H_

@class ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle;
@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface;

#import "JreEmulation.h"
#include "FQHttpResponseInterface.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2AddOrRefuseFriendLogic : NSObject {
 @public
  __weak id<ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface> mInterface_;
  ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface:(id<ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface>)mIn
                                                                               withInt:(int)userId
                                                                               withInt:(int)friendId
                                                                               withInt:(int)friend_roteType
                                                                               withInt:(int)relationId
                                                                           withBoolean:(BOOL)agreed
                                                                           withBoolean:(BOOL)isFree
                                                                           withBoolean:(BOOL)isDel;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2AddOrRefuseFriendLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2AddOrRefuseFriendLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2AddOrRefuseFriendLogic, mHandle_, ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle *)

@protocol ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)onDataReturn;

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicInterface_init() {}

@interface ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2AddOrRefuseFriendLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2AddOrRefuseFriendLogic:(ComFqHalcyonLogic2AddOrRefuseFriendLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2AddOrRefuseFriendLogic_AddOrRefuseFriendLogicHandle, this$0_, ComFqHalcyonLogic2AddOrRefuseFriendLogic *)

#endif // _ComFqHalcyonLogic2AddOrRefuseFriendLogic_H_
