//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Remark.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityRemark_H_
#define _ComFqHalcyonEntityRemark_H_

@class FQJSONObject;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

@interface ComFqHalcyonEntityRemark : ComFqHalcyonEntityHalcyonEntity {
 @public
  int id__;
  long long int remarkDate_;
  NSString *remark_;
  int timeId_;
  int userId_;
}

- (int)getId;

- (void)setIdWithInt:(int)id_;

- (long long int)getRemarkDate;

- (void)setRemarkDateWithLong:(long long int)remarkDate;

- (NSString *)getRemarks;

- (void)setRemarksWithNSString:(NSString *)remarks;

- (int)getTimeId;

- (void)setTimeIdWithInt:(int)timeId;

- (int)getUserId;

- (void)setUserIdWithInt:(int)userId;

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRemark *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityRemark_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityRemark, remark_, NSString *)

#endif // _ComFqHalcyonEntityRemark_H_
