//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/HalcyonUploadLooper.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/HalcyonUploadLooper.java"

#include "HalcyonUploadLooper.h"


#line 5
@implementation ComFqHalcyonHalcyonUploadLooper

ComFqHalcyonHalcyonUploadLooper * ComFqHalcyonHalcyonUploadLooper_instance_;


#line 8
- (id)init {
  return [super init];
}


#line 11
+ (ComFqHalcyonHalcyonUploadLooper *)getInstance {
  if (ComFqHalcyonHalcyonUploadLooper_instance_ == nil) {
    ComFqHalcyonHalcyonUploadLooper_instance_ = [[ComFqHalcyonHalcyonUploadLooper alloc] init];
  }
  return ComFqHalcyonHalcyonUploadLooper_instance_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "HalcyonUploadLooper", NULL, 0x2, NULL },
    { "getInstance", NULL, "Lcom.fq.halcyon.HalcyonUploadLooper;", 0x9, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "instance_", NULL, 0xa, "Lcom.fq.halcyon.HalcyonUploadLooper;", &ComFqHalcyonHalcyonUploadLooper_instance_,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonHalcyonUploadLooper = { "HalcyonUploadLooper", "com.fq.halcyon", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonHalcyonUploadLooper;
}

@end
