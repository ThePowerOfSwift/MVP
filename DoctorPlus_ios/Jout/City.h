//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/City.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityCity_H_
#define _ComFqHalcyonEntityCity_H_

@class FQJSONObject;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

#define ComFqHalcyonEntityCity_serialVersionUID 1LL

@interface ComFqHalcyonEntityCity : ComFqHalcyonEntityHalcyonEntity {
 @public
  int id__;
  int city_type_;
  JavaUtilArrayList *child_;
}

- (int)getType;

- (void)setTypeWithInt:(int)type;

- (int)getCityId;

- (void)setCityIdWithInt:(int)cityId;

- (void)addChildWithComFqHalcyonEntityCity:(ComFqHalcyonEntityCity *)city;

- (BOOL)isHaveChild;

- (JavaUtilArrayList *)getChildren;

- (void)setChildrenWithJavaUtilArrayList:(JavaUtilArrayList *)citys;

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityCity *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityCity_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityCity, child_, JavaUtilArrayList *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityCity, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityCity_H_