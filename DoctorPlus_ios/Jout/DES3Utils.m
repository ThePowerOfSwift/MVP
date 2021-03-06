//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/platform/DES3Utils.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/platform/DES3Utils.java"

#include "DES3Utils.h"
#include "IOSPrimitiveArray.h"
#include "java/util/Random.h"

@implementation ComFqLibPlatformDES3Utils

id<ComFqLibPlatformDES3Utils_DES3Potocol> ComFqLibPlatformDES3Utils_mDES3_;
JavaUtilRandom * ComFqLibPlatformDES3Utils_randGen_ = 
#line 54
nil;
IOSCharArray * ComFqLibPlatformDES3Utils_numbersAndLetters_ = 
#line 55
nil;


#line 33
+ (void)setDES3WithComFqLibPlatformDES3Utils_DES3Potocol:(id<ComFqLibPlatformDES3Utils_DES3Potocol>)des3 {
  
#line 34
  ComFqLibPlatformDES3Utils_mDES3_ = des3;
}


#line 38
+ (NSString *)encryptModeWithByteArray:(IOSByteArray *)src
                         withByteArray:(IOSByteArray *)keybyte {
  if (ComFqLibPlatformDES3Utils_mDES3_ != nil) {
    return [ComFqLibPlatformDES3Utils_mDES3_ encryptModeWithByteArray:src withByteArray:keybyte];
  }
  return nil;
}

+ (NSString *)decryptModeWithByteArray:(IOSByteArray *)src
                         withByteArray:(IOSByteArray *)keybyte {
  
#line 47
  if (ComFqLibPlatformDES3Utils_mDES3_ != nil) {
    return [ComFqLibPlatformDES3Utils_mDES3_ decryptModeWithByteArray:src withByteArray:keybyte];
  }
  return nil;
}


#line 64
+ (NSString *)randomStringWithInt:(int)length {
  
#line 65
  if (length < 1) {
    return nil;
  }
  if (ComFqLibPlatformDES3Utils_randGen_ == nil) {
    ComFqLibPlatformDES3Utils_randGen_ = [[JavaUtilRandom alloc] init];
    ComFqLibPlatformDES3Utils_numbersAndLetters_ = [(@"0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ") toCharArray];
  }
  IOSCharArray *randBuffer = [IOSCharArray arrayWithLength:length];
  for (int i = 0; i < (int) [randBuffer count]; i++) {
    (*IOSCharArray_GetRef(randBuffer, i)) = IOSCharArray_Get(nil_chk(ComFqLibPlatformDES3Utils_numbersAndLetters_), [((JavaUtilRandom *) nil_chk(ComFqLibPlatformDES3Utils_randGen_)) nextIntWithInt:71]);
  }
  return [NSString stringWithCharacters:randBuffer];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setDES3WithComFqLibPlatformDES3Utils_DES3Potocol:", "setDES3", "V", 0x9, NULL },
    { "encryptModeWithByteArray:withByteArray:", "encryptMode", "Ljava.lang.String;", 0x9, NULL },
    { "decryptModeWithByteArray:withByteArray:", "decryptMode", "Ljava.lang.String;", 0x9, NULL },
    { "randomStringWithInt:", "randomString", "Ljava.lang.String;", 0x19, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mDES3_", NULL, 0xa, "Lcom.fq.lib.platform.DES3Utils$DES3Potocol;", &ComFqLibPlatformDES3Utils_mDES3_,  },
    { "randGen_", NULL, 0xa, "Ljava.util.Random;", &ComFqLibPlatformDES3Utils_randGen_,  },
    { "numbersAndLetters_", NULL, 0xa, "[C", &ComFqLibPlatformDES3Utils_numbersAndLetters_,  },
  };
  static J2ObjcClassInfo _ComFqLibPlatformDES3Utils = { "DES3Utils", "com.fq.lib.platform", NULL, 0x401, 5, methods, 3, fields, 0, NULL};
  return &_ComFqLibPlatformDES3Utils;
}

@end

@interface ComFqLibPlatformDES3Utils_DES3Potocol : NSObject
@end

@implementation ComFqLibPlatformDES3Utils_DES3Potocol

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "encryptModeWithByteArray:withByteArray:", "encryptMode", "Ljava.lang.String;", 0x401, NULL },
    { "decryptModeWithByteArray:withByteArray:", "decryptMode", "Ljava.lang.String;", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqLibPlatformDES3Utils_DES3Potocol = { "DES3Potocol", "com.fq.lib.platform", "DES3Utils", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqLibPlatformDES3Utils_DES3Potocol;
}

@end
