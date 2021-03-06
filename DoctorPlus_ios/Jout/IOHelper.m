//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/IOHelper.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/IOHelper.java"

#include "IOHelper.h"
#include "IOSPrimitiveArray.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"


#line 5
@implementation ComFqLibIOHelper

NSString * ComFqLibIOHelper_TAG_ = @"IOHelper";


#line 22
+ (IOSByteArray *)readFullWithJavaIoInputStream:(JavaIoInputStream *)is {
  
#line 23
  IOSByteArray *buf = [IOSByteArray arrayWithLength:1024];
  IOSByteArray *total = [IOSByteArray arrayWithLength:1024 * 2];
  int offset = 0;
  int rlen = 0;
  while (rlen >= 0) {
    @try {
      rlen = [((JavaIoInputStream *) nil_chk(is)) readWithByteArray:buf];
      if (rlen > 0) {
        if (offset + rlen > (int) [total count]) {
          IOSByteArray *old = total;
          total = [IOSByteArray arrayWithLength:(int) [total count] + 1024 * 2];
          [JavaLangSystem arraycopyWithId:old withInt:0 withId:total withInt:0 withInt:offset];
        }
        [JavaLangSystem arraycopyWithId:buf withInt:0 withId:total withInt:offset withInt:rlen];
        offset += rlen;
      }
    }
    @catch (
#line 39
    JavaLangException *e) {
      [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString stringWithFormat:@"IOHelper->readFull wrong %@", [((JavaLangException *) nil_chk(e)) getMessage]]];
      break;
    }
  }
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString stringWithFormat:@"IOHelper->read bytes: %d", offset]];
  IOSByteArray *respContent = [IOSByteArray arrayWithLength:offset];
  [JavaLangSystem arraycopyWithId:total withInt:0 withId:respContent withInt:0 withInt:offset];
  total = nil;
  return respContent;
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "readFullWithJavaIoInputStream:", "readFull", "[B", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1c, "Ljava.lang.String;", &ComFqLibIOHelper_TAG_,  },
  };
  static J2ObjcClassInfo _ComFqLibIOHelper = { "IOHelper", "com.fq.lib", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComFqLibIOHelper;
}

@end

@interface ComFqLibIOHelper_DowloadProgressListener : NSObject
@end

@implementation ComFqLibIOHelper_DowloadProgressListener

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "inProcessWithInt:", "inProcess", "V", 0x401, NULL },
    { "onCompleteWithBoolean:", "onComplete", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqLibIOHelper_DowloadProgressListener = { "DowloadProgressListener", "com.fq.lib", "IOHelper", 0x209, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqLibIOHelper_DowloadProgressListener;
}

@end
