//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/FQLoopQueue.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHttpAsyncUploadloopFQLoopQueue_H_
#define _ComFqHttpAsyncUploadloopFQLoopQueue_H_

@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

#define ComFqHttpAsyncUploadloopFQLoopQueue_serialVersionUID 1LL

@interface ComFqHttpAsyncUploadloopFQLoopQueue : NSObject < JavaIoSerializable > {
 @public
  JavaUtilArrayList *mData_;
  id mLock_;
  int mCurrentIndex_;
}

- (id)init;

- (void)addWithId:(id)object;

- (id)getNext;

- (id)removeWithInt:(int)index;

- (BOOL)removeWithId:(id)object;

- (int)size;

- (BOOL)isEmpty;

- (JavaUtilArrayList *)getAll;

- (void)copyAllFieldsTo:(ComFqHttpAsyncUploadloopFQLoopQueue *)other;

@end

__attribute__((always_inline)) inline void ComFqHttpAsyncUploadloopFQLoopQueue_init() {}

J2OBJC_FIELD_SETTER(ComFqHttpAsyncUploadloopFQLoopQueue, mData_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComFqHttpAsyncUploadloopFQLoopQueue, mLock_, id)

J2OBJC_STATIC_FIELD_GETTER(ComFqHttpAsyncUploadloopFQLoopQueue, serialVersionUID, long long int)

#endif // _ComFqHttpAsyncUploadloopFQLoopQueue_H_
