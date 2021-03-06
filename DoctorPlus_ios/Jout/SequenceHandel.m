//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/SequenceHandel.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/SequenceHandel.java"

#include "SequenceHandel.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Exception.h"
#include "java/util/ArrayList.h"


#line 11
@implementation ComFqHalcyonSequenceHandel


#line 19
- (void)onHandleWithId:(id)element {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 29
- (id)initWithNSString:(NSString *)path {
  if (self = [super init]) {
    
#line 30
    mSequence_ = [[JavaUtilArrayList alloc] init];
    
#line 31
    filePath_ = path;
    
#line 32
    if (filePath_ != nil) {
      JavaIoObjectInputStream *ois = nil;
      @try {
        JavaIoFile *dataFile = [[JavaIoFile alloc] initWithNSString:filePath_];
        ois = [[JavaIoObjectInputStream alloc] initWithJavaIoInputStream:[[JavaIoFileInputStream alloc] initWithJavaIoFile:dataFile]];
        (void) [ois readObject];
      }
      @catch (
#line 38
      JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
      @finally {
        
#line 41
        @try {
          [((JavaIoObjectInputStream *) nil_chk(ois)) close];
        }
        @catch (
#line 43
        JavaIoIOException *e) {
          [((JavaIoIOException *) nil_chk(e)) printStackTrace];
        }
      }
    }
  }
  return self;
}


#line 55
- (void)pushWithId:(id)element {
  
#line 56
  if (element != nil && ![((JavaUtilArrayList *) nil_chk(mSequence_)) containsWithId:element]) {
    [mSequence_ addWithId:element];
    [self save];
  }
}


#line 62
- (id)pop {
  
#line 63
  if (![((JavaUtilArrayList *) nil_chk(mSequence_)) isEmpty])
#line 64
  return [mSequence_ removeWithInt:0];
  return nil;
}


#line 68
- (void)save {
  
#line 69
  if (filePath_ != nil) {
    JavaIoObjectOutputStream *oos = nil;
    @try {
      JavaIoFile *dataFile = [[JavaIoFile alloc] initWithNSString:filePath_];
      oos = [[JavaIoObjectOutputStream alloc] initWithJavaIoOutputStream:[[JavaIoFileOutputStream alloc] initWithJavaIoFile:dataFile]];
      [oos writeObjectWithId:mSequence_];
    }
    @catch (
#line 75
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
    @finally {
      
#line 78
      @try {
        [((JavaIoObjectOutputStream *) nil_chk(oos)) close];
      }
      @catch (
#line 80
      JavaIoIOException *e) {
        [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      }
    }
  }
}

- (void)copyAllFieldsTo:(ComFqHalcyonSequenceHandel *)other {
  [super copyAllFieldsTo:other];
  other->filePath_ = filePath_;
  other->mSequence_ = mSequence_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onHandleWithId:", "onHandle", "V", 0x401, NULL },
    { "initWithNSString:", "SequenceHandel", NULL, 0x1, NULL },
    { "pushWithId:", "push", "V", 0x1, NULL },
    { "pop", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "save", NULL, "V", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mSequence_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
    { "filePath_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonSequenceHandel = { "SequenceHandel", "com.fq.halcyon", NULL, 0x401, 5, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonSequenceHandel;
}

@end
