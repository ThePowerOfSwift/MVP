//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/RequestCSDLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2RequestCSDLogic_H_
#define _ComFqHalcyonLogic2RequestCSDLogic_H_

@class FQJSONObject;
@class JavaLangThrowable;
@class JavaUtilArrayList;
@protocol ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment;
@protocol ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf;
@protocol ComFqHalcyonLogic2RequestCSDLogic_ResCityInf;

#import "JreEmulation.h"
#include "FQHttpResponseInterface.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2RequestCSDLogic : NSObject {
}

- (void)requestCityWithComFqHalcyonLogic2RequestCSDLogic_ResCityInf:(id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>)feed;

- (void)requestDepartmentWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:(id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>)callback;

- (void)requestHospitalWithNSString:(NSString *)cityName
                        withBoolean:(BOOL)isSchool
withComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:(id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>)inf;

- (JavaUtilArrayList *)getCitysByJsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_init() {}

@protocol ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)feedHospitalWithJavaUtilArrayList:(JavaUtilArrayList *)hos;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf_init() {}

@protocol ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)feedDepartmentWithJavaUtilArrayList:(JavaUtilArrayList *)departmets;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment_init() {}

@protocol ComFqHalcyonLogic2RequestCSDLogic_ResCityInf < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)feedCityWithJavaUtilArrayList:(JavaUtilArrayList *)citys;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_ResCityInf_init() {}

@protocol ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback_init() {}

@interface ComFqHalcyonLogic2RequestCSDLogic_$1 : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2RequestCSDLogic *this$0_;
  FQJSONObject *val$localResult_;
  id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf> val$feed_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2RequestCSDLogic:(ComFqHalcyonLogic2RequestCSDLogic *)outer$
                               withFQJSONObject:(FQJSONObject *)capture$0
withComFqHalcyonLogic2RequestCSDLogic_ResCityInf:(id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>)capture$1;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_$1_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2RequestCSDLogic_$1, this$0_, ComFqHalcyonLogic2RequestCSDLogic *)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2RequestCSDLogic_$1, val$localResult_, FQJSONObject *)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2RequestCSDLogic_$1, val$feed_, id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>)

@interface ComFqHalcyonLogic2RequestCSDLogic_$2 : HalcyonHttpResponseHandle {
 @public
  id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment> val$callback_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:(id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>)capture$0;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_$2_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2RequestCSDLogic_$2, val$callback_, id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>)

@interface ComFqHalcyonLogic2RequestCSDLogic_$3 : HalcyonHttpResponseHandle {
 @public
  id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf> val$inf_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:(id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>)capture$0;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2RequestCSDLogic_$3_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2RequestCSDLogic_$3, val$inf_, id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>)

#endif // _ComFqHalcyonLogic2RequestCSDLogic_H_