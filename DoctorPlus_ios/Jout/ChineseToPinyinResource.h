//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/ChineseToPinyinResource.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqLibPinyin4jChineseToPinyinResource_H_
#define _ComFqLibPinyin4jChineseToPinyinResource_H_

@class IOSObjectArray;
@class JavaUtilProperties;

#import "JreEmulation.h"

@interface ComFqLibPinyin4jChineseToPinyinResource : NSObject {
 @public
  JavaUtilProperties *unicodeToHanyuPinyinTable_;
}

- (void)setUnicodeToHanyuPinyinTableWithJavaUtilProperties:(JavaUtilProperties *)unicodeToHanyuPinyinTable;

- (JavaUtilProperties *)getUnicodeToHanyuPinyinTable;

- (id)init;

- (void)initializeResource OBJC_METHOD_FAMILY_NONE;

- (IOSObjectArray *)getHanyuPinyinStringArrayWithChar:(unichar)ch;

- (BOOL)isValidRecordWithNSString:(NSString *)record;

- (NSString *)getHanyuPinyinRecordFromCharWithChar:(unichar)ch;

+ (ComFqLibPinyin4jChineseToPinyinResource *)getInstance;

- (void)copyAllFieldsTo:(ComFqLibPinyin4jChineseToPinyinResource *)other;

@end

__attribute__((always_inline)) inline void ComFqLibPinyin4jChineseToPinyinResource_init() {}

J2OBJC_FIELD_SETTER(ComFqLibPinyin4jChineseToPinyinResource, unicodeToHanyuPinyinTable_, JavaUtilProperties *)

@interface ComFqLibPinyin4jChineseToPinyinResource_ChineseToPinyinResourceHolder : NSObject {
}

- (id)init;

@end

FOUNDATION_EXPORT BOOL ComFqLibPinyin4jChineseToPinyinResource_ChineseToPinyinResourceHolder_initialized;
J2OBJC_STATIC_INIT(ComFqLibPinyin4jChineseToPinyinResource_ChineseToPinyinResourceHolder)

FOUNDATION_EXPORT ComFqLibPinyin4jChineseToPinyinResource *ComFqLibPinyin4jChineseToPinyinResource_ChineseToPinyinResourceHolder_theInstance_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibPinyin4jChineseToPinyinResource_ChineseToPinyinResourceHolder, theInstance_, ComFqLibPinyin4jChineseToPinyinResource *)

@interface ComFqLibPinyin4jChineseToPinyinResource_Field : NSObject {
}

- (id)initWithComFqLibPinyin4jChineseToPinyinResource:(ComFqLibPinyin4jChineseToPinyinResource *)outer$;

@end

__attribute__((always_inline)) inline void ComFqLibPinyin4jChineseToPinyinResource_Field_init() {}

FOUNDATION_EXPORT NSString *ComFqLibPinyin4jChineseToPinyinResource_Field_LEFT_BRACKET_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibPinyin4jChineseToPinyinResource_Field, LEFT_BRACKET_, NSString *)

FOUNDATION_EXPORT NSString *ComFqLibPinyin4jChineseToPinyinResource_Field_RIGHT_BRACKET_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibPinyin4jChineseToPinyinResource_Field, RIGHT_BRACKET_, NSString *)

FOUNDATION_EXPORT NSString *ComFqLibPinyin4jChineseToPinyinResource_Field_COMMA_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibPinyin4jChineseToPinyinResource_Field, COMMA_, NSString *)

#endif // _ComFqLibPinyin4jChineseToPinyinResource_H_
