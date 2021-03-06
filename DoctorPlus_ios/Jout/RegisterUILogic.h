//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/RegisterUILogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonUilogicRegisterUILogic_H_
#define _ComFqHalcyonUilogicRegisterUILogic_H_

@protocol ComFqHalcyonUilogicRegisterUILogic_MessageCallBack;

#import "JreEmulation.h"

#define ComFqHalcyonUilogicRegisterUILogic_LEVEL_ERROR 0
#define ComFqHalcyonUilogicRegisterUILogic_LEVEL_MIDDLE 2
#define ComFqHalcyonUilogicRegisterUILogic_LEVEL_STRONG 3
#define ComFqHalcyonUilogicRegisterUILogic_LEVEL_WEAK 1

@interface ComFqHalcyonUilogicRegisterUILogic : NSObject {
}

- (int)checkPwdLevelWithNSString:(NSString *)password;

- (BOOL)checkPhoneWithNSString:(NSString *)phone;

+ (BOOL)checkPasswordWithNSString:(NSString *)password;

+ (BOOL)checkInviteWithNSString:(NSString *)invite;

- (BOOL)checkVertificationWithNSString:(NSString *)vertification;

- (BOOL)isSamePwdWithNSString:(NSString *)password
                 withNSString:(NSString *)rePassword;

- (BOOL)checkInputWithNSString:(NSString *)phone
                  withNSString:(NSString *)password
                  withNSString:(NSString *)rePassword
                  withNSString:(NSString *)vertification
withComFqHalcyonUilogicRegisterUILogic_MessageCallBack:(id<ComFqHalcyonUilogicRegisterUILogic_MessageCallBack>)messageCallBack;

+ (BOOL)isMobileNOWithNSString:(NSString *)mobiles;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqHalcyonUilogicRegisterUILogic_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonUilogicRegisterUILogic, LEVEL_STRONG, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonUilogicRegisterUILogic, LEVEL_MIDDLE, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonUilogicRegisterUILogic, LEVEL_WEAK, int)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonUilogicRegisterUILogic, LEVEL_ERROR, int)

@protocol ComFqHalcyonUilogicRegisterUILogic_MessageCallBack < NSObject, JavaObject >

- (void)messageWithNSString:(NSString *)msg;

@end

__attribute__((always_inline)) inline void ComFqHalcyonUilogicRegisterUILogic_MessageCallBack_init() {}

#endif // _ComFqHalcyonUilogicRegisterUILogic_H_
