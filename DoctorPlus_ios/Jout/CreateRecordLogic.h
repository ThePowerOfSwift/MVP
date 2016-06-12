//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/CreateRecordLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2CreateRecordLogic_H_
#define _ComFqHalcyonLogic2CreateRecordLogic_H_

@class ComFqHalcyonEntityRecord;
@class ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle;
@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack;

#import "JreEmulation.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2CreateRecordLogic : NSObject {
 @public
  id<ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack> onCallBack_;
  ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack:(id<ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack>)onCallBack;

- (void)createRecordFolderWithNSString:(NSString *)recordName
                               withInt:(int)patientId
                               withInt:(int)recordCategory;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2CreateRecordLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2CreateRecordLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2CreateRecordLogic, onCallBack_, id<ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack>)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2CreateRecordLogic, mHandle_, ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle *)

@protocol ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack < NSObject, JavaObject >

- (void)onCreateFolderErrorWithInt:(int)code
                      withNSString:(NSString *)msg;

- (void)onCreateFolderSuccessWithInt:(int)code
        withComFqHalcyonEntityRecord:(ComFqHalcyonEntityRecord *)record;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderCallBack_init() {}

@interface ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2CreateRecordLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2CreateRecordLogic:(ComFqHalcyonLogic2CreateRecordLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2CreateRecordLogic_CreateRecordFolderHandle, this$0_, ComFqHalcyonLogic2CreateRecordLogic *)

#endif // _ComFqHalcyonLogic2CreateRecordLogic_H_
