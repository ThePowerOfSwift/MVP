//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ModifyPatientNameLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2ModifyPatientNameLogic_H_
#define _ComFqHalcyonLogic2ModifyPatientNameLogic_H_

@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2ModifyPatientNameLogic : NSObject {
 @public
  id<ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack> onCallBack_;
}

- (id)initWithComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack:(id<ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack>)onCallBack;

- (void)modifyNameWithInt:(int)patientId
             withNSString:(NSString *)patientName;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2ModifyPatientNameLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ModifyPatientNameLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2ModifyPatientNameLogic, onCallBack_, id<ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack>)

@interface ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyNameHandler : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2ModifyPatientNameLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2ModifyPatientNameLogic:(ComFqHalcyonLogic2ModifyPatientNameLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyNameHandler_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyNameHandler, this$0_, ComFqHalcyonLogic2ModifyPatientNameLogic *)

@protocol ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack < NSObject, JavaObject >

- (void)modifyNameSuccessWithInt:(int)code
                    withNSString:(NSString *)msg;

- (void)modifyNameErrorWithInt:(int)code
                  withNSString:(NSString *)msg;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ModifyPatientNameLogic_ModifyPatientNameCallBack_init() {}

#endif // _ComFqHalcyonLogic2ModifyPatientNameLogic_H_
