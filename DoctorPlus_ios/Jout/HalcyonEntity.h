//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/HalcyonEntity.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityHalcyonEntity_H_
#define _ComFqHalcyonEntityHalcyonEntity_H_

@class FQJSONObject;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/lang/Comparable.h"

#define ComFqHalcyonEntityHalcyonEntity_serialVersionUID 2LL

@interface ComFqHalcyonEntityHalcyonEntity : NSObject < JavaIoSerializable, JavaLangComparable > {
 @public
  NSString *name_;
  NSString *pinyinName_;
}

- (NSString *)getName;

- (void)setNameWithNSString:(NSString *)name;

- (NSString *)getPinyinName;

- (void)setPinyinNameWithNSString:(NSString *)pinyinName;

- (int)compareToWithId:(ComFqHalcyonEntityHalcyonEntity *)user;

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (FQJSONObject *)getJson;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityHalcyonEntity *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityHalcyonEntity_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityHalcyonEntity, name_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityHalcyonEntity, pinyinName_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityHalcyonEntity, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityHalcyonEntity_H_
