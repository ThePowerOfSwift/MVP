//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SearchHospitalLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2SearchHospitalLogic_H_
#define _ComFqHalcyonLogic2SearchHospitalLogic_H_

@class ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle;
@class JavaLangThrowable;
@class JavaUtilArrayList;
@protocol ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2SearchHospitalLogic : NSObject {
 @public
  JavaUtilArrayList *mList_;
  __weak id<ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack> onCallBack_;
  ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack:(id<ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack>)onCallBack;

- (void)searchHospitalWithNSString:(NSString *)hospitalName
                      withNSString:(NSString *)cityName;

- (void)searchHDRHospital;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2SearchHospitalLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchHospitalLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchHospitalLogic, mList_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchHospitalLogic, mHandle_, ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle *)

@protocol ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack < NSObject, JavaObject >

- (void)onSearchHospitalErrorWithInt:(int)code
                        withNSString:(NSString *)msg;

- (void)onSearchHospitalResultWithJavaUtilArrayList:(JavaUtilArrayList *)mList;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalCallBack_init() {}

@interface ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2SearchHospitalLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2SearchHospitalLogic:(ComFqHalcyonLogic2SearchHospitalLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchHospitalLogic_SearchHospitalHandle, this$0_, ComFqHalcyonLogic2SearchHospitalLogic *)

#endif // _ComFqHalcyonLogic2SearchHospitalLogic_H_
