//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/User.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityUser_H_
#define _ComFqHalcyonEntityUser_H_

@class FQJSONObject;

#import "JreEmulation.h"
#include "Person.h"

#define ComFqHalcyonEntityUser_serialVersionUID 1LL

@interface ComFqHalcyonEntityUser : ComFqHalcyonEntityPerson {
 @public
  NSString *password_;
  NSString *myInvition_;
  int dp_money_;
  int annual_fee_;
  BOOL isOnlyWifi__;
}

- (void)setDPMoneyWithInt:(int)money;

- (int)getDPMoney;

- (void)setAnnualWithInt:(int)annual;

- (int)getAnnual;

- (NSString *)getInvition;

- (void)setInvitionWithNSString:(NSString *)invition;

- (NSString *)getPassword;

- (void)setPasswordWithNSString:(NSString *)password;

+ (long long int)getSerialversionuid;

- (BOOL)isOnlyWifi;

- (void)setOnlyWifiWithBoolean:(BOOL)isOnlyWifi;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (FQJSONObject *)getJson;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityUser *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityUser_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityUser, password_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonEntityUser, myInvition_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityUser, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityUser_H_
