//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/TimerMember.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityTimerMember_H_
#define _ComFqHalcyonEntityTimerMember_H_

@class FQJSONArray;
@class FQJSONObject;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface ComFqHalcyonEntityTimerMember : NSObject < JavaIoSerializable > {
 @public
  int userId_;
  NSString *name_;
  NSString *headIcon_;
}

- (void)setAtttributeByjsonWithFQJSONArray:(FQJSONArray *)mArray;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)mObject;

- (int)getUserId;

- (void)setUserIdWithInt:(int)userId;

- (NSString *)getName;

- (void)setNameWithNSString:(NSString *)name;

- (NSString *)getHeadIcon;

- (void)setHeadIconWithNSString:(NSString *)headIcon;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityTimerMember *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityTimerMember_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityTimerMember, name_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityTimerMember, headIcon_, NSString *)

#endif // _ComFqHalcyonEntityTimerMember_H_