//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/GetExamListLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2GetExamListLogic_H_
#define _ComFqHalcyonLogic2GetExamListLogic_H_

@class ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle;
@class JavaLangThrowable;
@class JavaUtilArrayList;
@protocol ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2GetExamListLogic : NSObject {
 @public
  JavaUtilArrayList *examList_;
  id<ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack> onCallBack_;
  ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack:(id<ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack>)onCallBack;

- (void)getExamListWithInt:(int)hosId;

- (void)getExamListWithInt:(int)hosId
              withNSString:(NSString *)keywords;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2GetExamListLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2GetExamListLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2GetExamListLogic, examList_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2GetExamListLogic, onCallBack_, id<ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack>)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2GetExamListLogic, mHandle_, ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle *)

@protocol ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack < NSObject, JavaObject >

- (void)onGetExamListErrorWithInt:(int)code
                     withNSString:(NSString *)msg;

- (void)onGetExamListResultWithJavaUtilArrayList:(JavaUtilArrayList *)examList;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2GetExamListLogic_GetExamListCallBack_init() {}

@interface ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2GetExamListLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2GetExamListLogic:(ComFqHalcyonLogic2GetExamListLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2GetExamListLogic_GetExamListHandle, this$0_, ComFqHalcyonLogic2GetExamListLogic *)

#endif // _ComFqHalcyonLogic2GetExamListLogic_H_
