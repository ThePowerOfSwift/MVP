//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/platform/HMACSHA1.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqLibPlatformHMACSHA1_H_
#define _ComFqLibPlatformHMACSHA1_H_

@protocol ComFqLibPlatformHMACSHA1_HMACSHA1Potocol;

#import "JreEmulation.h"

@interface ComFqLibPlatformHMACSHA1 : NSObject {
}

+ (void)setHMACSHA1WithComFqLibPlatformHMACSHA1_HMACSHA1Potocol:(id<ComFqLibPlatformHMACSHA1_HMACSHA1Potocol>)hmacsha1;

+ (NSString *)getSessionSignatureWithNSString:(NSString *)accessToken
                                 withNSString:(NSString *)userId
                                 withNSString:(NSString *)httpMethod
                                     withLong:(long long int)timestamp
                                 withNSString:(NSString *)resource;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqLibPlatformHMACSHA1_init() {}

FOUNDATION_EXPORT id<ComFqLibPlatformHMACSHA1_HMACSHA1Potocol> ComFqLibPlatformHMACSHA1_mInstance_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibPlatformHMACSHA1, mInstance_, id<ComFqLibPlatformHMACSHA1_HMACSHA1Potocol>)
J2OBJC_STATIC_FIELD_SETTER(ComFqLibPlatformHMACSHA1, mInstance_, id<ComFqLibPlatformHMACSHA1_HMACSHA1Potocol>)

@protocol ComFqLibPlatformHMACSHA1_HMACSHA1Potocol < NSObject, JavaObject >

- (NSString *)getSessionSignatureWithNSString:(NSString *)accessToken
                                 withNSString:(NSString *)userId
                                 withNSString:(NSString *)httpMethod
                                     withLong:(long long int)timestamp
                                 withNSString:(NSString *)resource;

@end

__attribute__((always_inline)) inline void ComFqLibPlatformHMACSHA1_HMACSHA1Potocol_init() {}

#endif // _ComFqLibPlatformHMACSHA1_H_