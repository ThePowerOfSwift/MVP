//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/potocol/FQStringResponseHandle.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/potocol/FQStringResponseHandle.java"

#include "IOSPrimitiveArray.h"
#import "FQStringResponseHandle.h"

@implementation FQStringResponseHandle


#line 12
- (void)handleBinaryDataWithByteArray:(IOSByteArray *)data {
  
#line 13
  [self handleStringWithNSString:[NSString stringWithBytes:data]];
}


#line 16
- (void)handleStringWithNSString:(NSString *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleBinaryDataWithByteArray:", "handleBinaryData", "V", 0x1, NULL },
    { "handleStringWithNSString:", "handleString", "V", 0x401, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _FQStringResponseHandle = { "FQStringResponseHandle", "com.fq.http.potocol", NULL, 0x401, 3, methods, 0, NULL, 0, NULL};
  return &_FQStringResponseHandle;
}

@end
