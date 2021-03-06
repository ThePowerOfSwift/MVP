//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SurveyPatientLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2SurveyPatientLogic_H_
#define _ComFqHalcyonLogic2SurveyPatientLogic_H_

@class JavaLangThrowable;
@class JavaUtilArrayList;
@protocol ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2SurveyPatientLogic : NSObject {
 @public
  id<ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack> onCallBack_;
  JavaUtilArrayList *surItemList_;
}

- (id)initWithComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack:(id<ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack>)onCallBack;

- (void)surveyPatientWithInt:(int)patientId;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2SurveyPatientLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SurveyPatientLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SurveyPatientLogic, onCallBack_, id<ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack>)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SurveyPatientLogic, surItemList_, JavaUtilArrayList *)

@protocol ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack < NSObject, JavaObject >

- (void)onSurveyErrorWithInt:(int)code
                withNSString:(NSString *)msg;

- (void)onSurveyResultWithInt:(int)code
        withJavaUtilArrayList:(JavaUtilArrayList *)surItemList;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SurveyPatientLogic_SurveyPatientCallBack_init() {}

@interface ComFqHalcyonLogic2SurveyPatientLogic_$1 : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2SurveyPatientLogic *this$0_;
  int val$patientId_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2SurveyPatientLogic:(ComFqHalcyonLogic2SurveyPatientLogic *)outer$
                                           withInt:(int)capture$0;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SurveyPatientLogic_$1_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SurveyPatientLogic_$1, this$0_, ComFqHalcyonLogic2SurveyPatientLogic *)

#endif // _ComFqHalcyonLogic2SurveyPatientLogic_H_
