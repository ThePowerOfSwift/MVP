//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/CertificationStatus.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityCertificationStatus_H_
#define _ComFqHalcyonEntityCertificationStatus_H_

@class ComFqHalcyonEntityCertificationStatus_AuthImage;
@class ComFqHalcyonEntityPhotoRecord;
@class FQJSONObject;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "DoctorAuthLogic.h"
#include "HalcyonEntity.h"
#include "ICallback.h"

#define ComFqHalcyonEntityCertificationStatus_CERTIFICATION_APPROVING 1
#define ComFqHalcyonEntityCertificationStatus_CERTIFICATION_INITIALIZE 0
#define ComFqHalcyonEntityCertificationStatus_CERTIFICATION_NOT_PASS 2
#define ComFqHalcyonEntityCertificationStatus_CERTIFICATION_PASS 3
#define ComFqHalcyonEntityCertificationStatus_CERTIFICATION_WAIT 4
#define ComFqHalcyonEntityCertificationStatus_serialVersionUID 1LL

@interface ComFqHalcyonEntityCertificationStatus : ComFqHalcyonEntityHalcyonEntity {
 @public
  int auth_status_;
  int certi_id_;
  JavaUtilArrayList *authImages_;
  BOOL isHaveApply_;
}

- (void)clear;

+ (void)initCertification OBJC_METHOD_FAMILY_NONE;

+ (ComFqHalcyonEntityCertificationStatus *)getInstance;

+ (void)initDoctorAuth2Net OBJC_METHOD_FAMILY_NONE;

+ (ComFqHalcyonEntityCertificationStatus *)initByJsonWithFQJSONObject:(FQJSONObject *)json OBJC_METHOD_FAMILY_NONE;

- (BOOL)isHaveAuth;

- (void)setHaveAuthWithBoolean:(BOOL)isb;

- (void)setStateWithInt:(int)type;

- (int)getState;

- (int)getId;

- (JavaUtilArrayList *)getImgs;

- (ComFqHalcyonEntityCertificationStatus_AuthImage *)getAuthImageByTypeWithInt:(int)type;

- (BOOL)isImgExitByTypeWithInt:(int)type;

- (NSString *)getStateStrWithBoolean:(BOOL)isHead;

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityCertificationStatus *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityCertificationStatus_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityCertificationStatus, authImages_, JavaUtilArrayList *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, serialVersionUID, long long int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, CERTIFICATION_INITIALIZE, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, CERTIFICATION_APPROVING, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, CERTIFICATION_NOT_PASS, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, CERTIFICATION_PASS, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, CERTIFICATION_WAIT, int)

FOUNDATION_EXPORT ComFqHalcyonEntityCertificationStatus *ComFqHalcyonEntityCertificationStatus__instance_;
J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus, _instance_, ComFqHalcyonEntityCertificationStatus *)
J2OBJC_STATIC_FIELD_SETTER(ComFqHalcyonEntityCertificationStatus, _instance_, ComFqHalcyonEntityCertificationStatus *)

#define ComFqHalcyonEntityCertificationStatus_AuthImage_CERTYPE_CARD_F 3
#define ComFqHalcyonEntityCertificationStatus_AuthImage_CERTYPE_CARD_Z 2
#define ComFqHalcyonEntityCertificationStatus_AuthImage_CERTYPE_DOCTOR 1

@interface ComFqHalcyonEntityCertificationStatus_AuthImage : NSObject {
 @public
  int certType_;
  int doctorCertiId_;
  ComFqHalcyonEntityPhotoRecord *hayImage_;
}

- (id)initWithInt:(int)docCerId
          withInt:(int)type
withComFqHalcyonEntityPhotoRecord:(ComFqHalcyonEntityPhotoRecord *)img;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityCertificationStatus_AuthImage *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityCertificationStatus_AuthImage_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityCertificationStatus_AuthImage, hayImage_, ComFqHalcyonEntityPhotoRecord *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus_AuthImage, CERTYPE_DOCTOR, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus_AuthImage, CERTYPE_CARD_Z, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCertificationStatus_AuthImage, CERTYPE_CARD_F, int)

@interface ComFqHalcyonEntityCertificationStatus_$1 : NSObject < ComFqHalcyonLogicDoctorAuthLogic_OnRequestAuthStateCallback > {
}

- (void)feedRequestWithComFqHalcyonEntityCertificationStatus:(ComFqHalcyonEntityCertificationStatus *)certif;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityCertificationStatus_$1_init() {}

@interface ComFqHalcyonEntityCertificationStatus_$1_$1 : NSObject < ComFqLibCallbackICallback > {
}

- (void)doCallbackWithId:(id)obj;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityCertificationStatus_$1_$1_init() {}

#endif // _ComFqHalcyonEntityCertificationStatus_H_
