//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSON.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _FQJSON_H_
#define _FQJSON_H_

@class FQJSONException;
@class JavaLangBoolean;
@class JavaLangDouble;
@class JavaLangInteger;
@class JavaLangLong;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface FQJSON : NSObject < JavaIoSerializable > {
}

+ (double)checkDoubleWithDouble:(double)d;

+ (JavaLangBoolean *)toBooleanWithId:(id)value;

+ (JavaLangDouble *)toDoubleWithId:(id)value;

+ (JavaLangInteger *)toIntegerWithId:(id)value;

+ (JavaLangLong *)toLongWithId:(id)value;

+ (NSString *)toStringWithId:(id)value;

+ (FQJSONException *)typeMismatchWithId:(id)indexOrName
                                 withId:(id)actual
                           withNSString:(NSString *)requiredType;

+ (FQJSONException *)typeMismatchWithId:(id)actual
                           withNSString:(NSString *)requiredType;

- (id)init;

@end

__attribute__((always_inline)) inline void FQJSON_init() {}

typedef FQJSON ComFqLibJsonJSON;

#endif // _FQJSON_H_