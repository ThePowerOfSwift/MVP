//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Version.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityVersion_H_
#define _ComFqHalcyonEntityVersion_H_

@class FQJSONObject;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

#define ComFqHalcyonEntityVersion_serialVersionUID 1LL

@interface ComFqHalcyonEntityVersion : ComFqHalcyonEntityHalcyonEntity {
 @public
  NSString *versionName_;
  int versionCode_;
  int minCode_;
  NSString *updateUrl_;
  NSString *updateDes_;
}

- (void)test;

- (NSString *)getVersionName;

- (void)setVersionNameWithNSString:(NSString *)versionName;

- (int)getVersionCode;

- (void)setVersionCodeWithInt:(int)versionCode;

- (int)getMinCode;

- (void)setMinCodeWithInt:(int)minCode;

- (NSString *)getUpdateUrl;

- (void)setUpdateUrlWithNSString:(NSString *)updateUrl;

- (NSString *)getUpdateDes;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityVersion *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityVersion_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityVersion, versionName_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityVersion, updateUrl_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityVersion, updateDes_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityVersion, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityVersion_H_