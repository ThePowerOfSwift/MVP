//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/HttpHelper.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqLibHttpHelper_H_
#define _ComFqLibHttpHelper_H_

@class ComFqHttpAsyncFQHttpParams;
@class ComFqHttpPotocolHttpClientPotocol;
@class HalcyonHttpResponseHandle;
@class IOSByteArray;
@class JavaIoFile;
@class JavaLangThrowable;
@protocol ComFqHttpAsyncParamsWrapper_FQProcessInterface;
@protocol ComFqHttpPotocolHttpRequestPotocol;
@protocol ComFqLibCallbackICallback;
@protocol FQHttpResponseHandle;

#import "JreEmulation.h"
#include "FQBinaryResponseHandle.h"

@interface ComFqLibHttpHelper : NSObject {
}

+ (void)setHttpClientWithComFqHttpPotocolHttpClientPotocol:(ComFqHttpPotocolHttpClientPotocol *)client;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendGetRequestWithNSString:(NSString *)url
                                            withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendGetRequestWithNSString:(NSString *)url
                                      withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                            withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendPostRequestWithNSString:(NSString *)url
                                             withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendPostRequestWithNSString:(NSString *)url
                                       withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                             withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)upLoadImageWithNSString:(NSString *)url
                                                     withNSString:(NSString *)key
                                                     withNSString:(NSString *)fielPath
                                         withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle
               withComFqHttpAsyncParamsWrapper_FQProcessInterface:(id<ComFqHttpAsyncParamsWrapper_FQProcessInterface>)process;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)upLoadImageWithNSString:(NSString *)url
                                                     withNSString:(NSString *)fielPath
                                         withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)upLoadImageWithNSString:(NSString *)url
                                                     withNSString:(NSString *)fielPath
                                         withFQHttpResponseHandle:(id<FQHttpResponseHandle>)handle
               withComFqHttpAsyncParamsWrapper_FQProcessInterface:(id<ComFqHttpAsyncParamsWrapper_FQProcessInterface>)process;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendGetRequestWithNSString:(NSString *)url
                                      withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                                         withBoolean:(BOOL)loadCache
                                                        withNSString:(NSString *)path
                                       withHalcyonHttpResponseHandle:(HalcyonHttpResponseHandle *)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendPostRequestWithNSString:(NSString *)url
                                       withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                                          withBoolean:(BOOL)loadCache
                                                         withNSString:(NSString *)path
                                        withHalcyonHttpResponseHandle:(HalcyonHttpResponseHandle *)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendPostRequestWithNSString:(NSString *)url
                                                          withBoolean:(BOOL)loadCache
                                                         withNSString:(NSString *)path
                                        withHalcyonHttpResponseHandle:(HalcyonHttpResponseHandle *)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendGetRequestWithNSString:(NSString *)url
                                      withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                                         withBoolean:(BOOL)loadCache
                                                        withNSString:(NSString *)path
                                                        withNSString:(NSString *)unique
                                       withHalcyonHttpResponseHandle:(HalcyonHttpResponseHandle *)handle;

+ (id<ComFqHttpPotocolHttpRequestPotocol>)sendPostRequestWithNSString:(NSString *)url
                                       withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
                                                          withBoolean:(BOOL)loadCache
                                                         withNSString:(NSString *)path
                                                         withNSString:(NSString *)unique
                                        withHalcyonHttpResponseHandle:(HalcyonHttpResponseHandle *)handle;

+ (void)sendGetRequestImageWithNSString:(NSString *)mImageUrl
                           withNSString:(NSString *)path
          withComFqLibCallbackICallback:(id<ComFqLibCallbackICallback>)callback;

- (id)init;

@end

__attribute__((always_inline)) inline void ComFqLibHttpHelper_init() {}

FOUNDATION_EXPORT ComFqHttpPotocolHttpClientPotocol *ComFqLibHttpHelper_mClient_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibHttpHelper, mClient_, ComFqHttpPotocolHttpClientPotocol *)
J2OBJC_STATIC_FIELD_SETTER(ComFqLibHttpHelper, mClient_, ComFqHttpPotocolHttpClientPotocol *)

@interface ComFqLibHttpHelper_$1 : FQBinaryResponseHandle {
 @public
  JavaIoFile *val$mImage_;
  id<ComFqLibCallbackICallback> val$callback_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)error;

- (void)handleBinaryDataWithByteArray:(IOSByteArray *)data;

- (id)initWithJavaIoFile:(JavaIoFile *)capture$0
withComFqLibCallbackICallback:(id<ComFqLibCallbackICallback>)capture$1;

@end

__attribute__((always_inline)) inline void ComFqLibHttpHelper_$1_init() {}

J2OBJC_FIELD_SETTER(ComFqLibHttpHelper_$1, val$mImage_, JavaIoFile *)
J2OBJC_FIELD_SETTER(ComFqLibHttpHelper_$1, val$callback_, id<ComFqLibCallbackICallback>)

#endif // _ComFqLibHttpHelper_H_
