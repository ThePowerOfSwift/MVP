//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SearchFollowUpDetailLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2SearchFollowUpDetailLogic_H_
#define _ComFqHalcyonLogic2SearchFollowUpDetailLogic_H_

@class ComFqHalcyonEntityFollowUp;
@class ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle;
@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface;

#import "JreEmulation.h"
#include "FQHttpResponseInterface.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2SearchFollowUpDetailLogic : NSObject {
 @public
  __weak id<ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface> mInterface_;
  ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface:(id<ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface>)mIn;

- (void)searchFollowUpDetailWithInt:(int)mTimerId;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2SearchFollowUpDetailLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFollowUpDetailLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchFollowUpDetailLogic, mHandle_, ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle *)

@protocol ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)onSearchErrorWithInt:(int)code
                withNSString:(NSString *)msg;

- (void)onSearchSuccessWithComFqHalcyonEntityFollowUp:(ComFqHalcyonEntityFollowUp *)mFollowUp;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicInterface_init() {}

@interface ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2SearchFollowUpDetailLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2SearchFollowUpDetailLogic:(ComFqHalcyonLogic2SearchFollowUpDetailLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchFollowUpDetailLogic_SearchFollowUpDetailLogicHandle, this$0_, ComFqHalcyonLogic2SearchFollowUpDetailLogic *)

#endif // _ComFqHalcyonLogic2SearchFollowUpDetailLogic_H_
