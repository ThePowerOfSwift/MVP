//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DoctorPlus_ios/Java_implement/com/loopj/android/http/RequestParams.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComLoopjAndroidHttpRequestParams_H_
#define _ComLoopjAndroidHttpRequestParams_H_

@class JavaIoFile;
@class JavaIoInputStream;
@class JavaUtilConcurrentConcurrentHashMap;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface ComLoopjAndroidHttpRequestParams : NSObject < JavaIoSerializable > {
 @public
  BOOL isRepeatable_;
  BOOL useJsonStreamer_;
  BOOL autoCloseInputStreams_;
  JavaUtilConcurrentConcurrentHashMap *urlParams_;
  JavaUtilConcurrentConcurrentHashMap *streamParams_;
  JavaUtilConcurrentConcurrentHashMap *fileParams_;
  JavaUtilConcurrentConcurrentHashMap *urlParamsWithObjects_;
}

- (void)putWithNSString:(NSString *)key
           withNSString:(NSString *)value;

- (void)putWithNSString:(NSString *)key
         withJavaIoFile:(JavaIoFile *)file;

- (void)putWithNSString:(NSString *)key
         withJavaIoFile:(JavaIoFile *)file
           withNSString:(NSString *)contentType;

- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream;

- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name;

- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name
           withNSString:(NSString *)contentType;

- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name
           withNSString:(NSString *)contentType
            withBoolean:(BOOL)autoClose;

- (void)putWithNSString:(NSString *)key
                 withId:(id)value;

- (void)putWithNSString:(NSString *)key
                withInt:(int)value;

- (void)putWithNSString:(NSString *)key
               withLong:(long long int)value;

- (void)addWithNSString:(NSString *)key
           withNSString:(NSString *)value;

- (void)removeWithNSString:(NSString *)key;

- (BOOL)hasWithNSString:(NSString *)key;

- (NSString *)description;

- (void)setHttpEntityIsRepeatableWithBoolean:(BOOL)isRepeatable;

- (void)setUseJsonStreamerWithBoolean:(BOOL)useJsonStreamer;

- (void)setAutoCloseInputStreamsWithBoolean:(BOOL)flag;

- (id)init;

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams *)other;

@end

__attribute__((always_inline)) inline void ComLoopjAndroidHttpRequestParams_init() {}

J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams, urlParams_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams, streamParams_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams, fileParams_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams, urlParamsWithObjects_, JavaUtilConcurrentConcurrentHashMap *)

FOUNDATION_EXPORT NSString *ComLoopjAndroidHttpRequestParams_APPLICATION_OCTET_STREAM_;
J2OBJC_STATIC_FIELD_GETTER(ComLoopjAndroidHttpRequestParams, APPLICATION_OCTET_STREAM_, NSString *)

FOUNDATION_EXPORT NSString *ComLoopjAndroidHttpRequestParams_APPLICATION_JSON_;
J2OBJC_STATIC_FIELD_GETTER(ComLoopjAndroidHttpRequestParams, APPLICATION_JSON_, NSString *)

FOUNDATION_EXPORT NSString *ComLoopjAndroidHttpRequestParams_LOG_TAG_;
J2OBJC_STATIC_FIELD_GETTER(ComLoopjAndroidHttpRequestParams, LOG_TAG_, NSString *)

@interface ComLoopjAndroidHttpRequestParams_FileWrapper : NSObject {
 @public
  JavaIoFile *file_;
  NSString *contentType_;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file
            withNSString:(NSString *)contentType;

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams_FileWrapper *)other;

@end

__attribute__((always_inline)) inline void ComLoopjAndroidHttpRequestParams_FileWrapper_init() {}

J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams_FileWrapper, file_, JavaIoFile *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams_FileWrapper, contentType_, NSString *)

@interface ComLoopjAndroidHttpRequestParams_StreamWrapper : NSObject {
 @public
  JavaIoInputStream *inputStream_;
  NSString *name_;
  NSString *contentType_;
  BOOL autoClose_;
}

- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                   withNSString:(NSString *)name
                   withNSString:(NSString *)contentType
                    withBoolean:(BOOL)autoClose;

+ (ComLoopjAndroidHttpRequestParams_StreamWrapper *)newInstanceWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                                                                        withNSString:(NSString *)name
                                                                        withNSString:(NSString *)contentType
                                                                         withBoolean:(BOOL)autoClose OBJC_METHOD_FAMILY_NONE;

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams_StreamWrapper *)other;

@end

__attribute__((always_inline)) inline void ComLoopjAndroidHttpRequestParams_StreamWrapper_init() {}

J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams_StreamWrapper, inputStream_, JavaIoInputStream *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams_StreamWrapper, name_, NSString *)
J2OBJC_FIELD_SETTER(ComLoopjAndroidHttpRequestParams_StreamWrapper, contentType_, NSString *)

#endif // _ComLoopjAndroidHttpRequestParams_H_
