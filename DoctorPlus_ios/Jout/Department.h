//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Department.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityDepartment_H_
#define _ComFqHalcyonEntityDepartment_H_

@class FQJSONObject;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

#define ComFqHalcyonEntityDepartment_serialVersionUID 1LL

@interface ComFqHalcyonEntityDepartment : ComFqHalcyonEntityHalcyonEntity {
 @public
  int dept_id_;
  JavaUtilArrayList *child_;
  NSString *dept_name_;
}

- (BOOL)isHaveChild;

- (int)getDepartmentId;

- (void)setDepartmentIdWithInt:(int)departmentId;

- (JavaUtilArrayList *)getChild;

- (NSString *)getName;

- (void)setNameWithNSString:(NSString *)name;

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityDepartment *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityDepartment_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityDepartment, child_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityDepartment, dept_name_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityDepartment, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityDepartment_H_
