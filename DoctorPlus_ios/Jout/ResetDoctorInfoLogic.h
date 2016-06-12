//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ResetDoctorInfoLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2ResetDoctorInfoLogic_H_
#define _ComFqHalcyonLogic2ResetDoctorInfoLogic_H_

@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2ResetDoctorInfoLogic : NSObject {
}

- (void)reqModyHeadWithInt:(int)imageId;

- (void)reqModyNameWithNSString:(NSString *)name;

- (void)reqModyCityWithInt:(int)cityId;

- (void)reqModyHospWithInt:(int)cityId
                   withInt:(int)hosId
              withNSString:(NSString *)hospName;

- (void)reqModyDeptWithInt:(int)deptId
                   withInt:(int)secId
              withNSString:(NSString *)name;

- (void)reqModyGenderWithInt:(int)gender;

- (void)reqModyDesWithNSString:(NSString *)des;

- (void)reqModyUniversityWithNSString:(NSString *)university;

- (void)reqModyEntranceTimeWithNSString:(NSString *)entranceTime;

- (void)reqModyMajorWithNSString:(NSString *)major;

- (void)reqModyTitleWithInt:(int)title;

- (void)reqModyEducationWithInt:(int)education;

- (void)requestModifyDoctorWithJavaUtilMap:(id<JavaUtilMap>)map;

- (void)requestInvientWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:(id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>)callback;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ResetDoctorInfoLogic_init() {}

@protocol ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback < NSObject, JavaObject >

- (void)doInvientBackWithNSString:(NSString *)invient;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback_init() {}

@interface ComFqHalcyonLogic2ResetDoctorInfoLogic_$1 : HalcyonHttpResponseHandle {
 @public
  id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback> val$callback_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:(id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>)capture$0;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2ResetDoctorInfoLogic_$1_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2ResetDoctorInfoLogic_$1, val$callback_, id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>)

#endif // _ComFqHalcyonLogic2ResetDoctorInfoLogic_H_