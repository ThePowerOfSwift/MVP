//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/OnceFollowUpCycle.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityOnceFollowUpCycle_H_
#define _ComFqHalcyonEntityOnceFollowUpCycle_H_

@class FQJSONObject;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

#define ComFqHalcyonEntityOnceFollowUpCycle_serialVersionUID 1LL

@interface ComFqHalcyonEntityOnceFollowUpCycle : ComFqHalcyonEntityHalcyonEntity {
 @public
  NSString *mItemName_;
  NSString *mItentValue_;
  NSString *mItemUnit_;
  NSString *mPreId_;
  int mItemtId_;
  NSString *mTimerDate_;
}

- (void)test;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (NSString *)getmItemName;

- (void)setmItemNameWithNSString:(NSString *)mItemName;

- (NSString *)getmItentValue;

- (void)setmItentValueWithNSString:(NSString *)mItentValue;

- (NSString *)getmItemUnit;

- (void)setmItemUnitWithNSString:(NSString *)mItemUnit;

- (NSString *)getmPreId;

- (void)setmPreIdWithNSString:(NSString *)mPreId;

- (int)getmItemtId;

- (void)setmItemtIdWithInt:(int)mItemtId;

- (NSString *)getmTimerDate;

- (void)setmTimerDateWithNSString:(NSString *)mTimerDate;

- (NSString *)parseDateWithNSString:(NSString *)str;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityOnceFollowUpCycle *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityOnceFollowUpCycle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityOnceFollowUpCycle, mItemName_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityOnceFollowUpCycle, mItentValue_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityOnceFollowUpCycle, mItemUnit_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityOnceFollowUpCycle, mPreId_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityOnceFollowUpCycle, mTimerDate_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityOnceFollowUpCycle, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityOnceFollowUpCycle_H_
