//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/TextHelper.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/TextHelper.java"

#include "TextHelper.h"


#line 27
@implementation ComFqLibPinyin4jTextHelper


#line 34
+ (NSString *)extractToneNumberWithNSString:(NSString *)hanyuPinyinWithToneNumber {
  
#line 36
  return [hanyuPinyinWithToneNumber substring:((int) [((NSString *) nil_chk(hanyuPinyinWithToneNumber)) length]) - 1];
}


#line 43
+ (NSString *)extractPinyinStringWithNSString:(NSString *)hanyuPinyinWithToneNumber {
  
#line 45
  return [hanyuPinyinWithToneNumber substring:0 endIndex:((int) [((NSString *) nil_chk(hanyuPinyinWithToneNumber)) length]) - 1];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "extractToneNumberWithNSString:", "extractToneNumber", "Ljava.lang.String;", 0x8, NULL },
    { "extractPinyinStringWithNSString:", "extractPinyinString", "Ljava.lang.String;", 0x8, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _ComFqLibPinyin4jTextHelper = { "TextHelper", "com.fq.lib.pinyin4j", NULL, 0x0, 3, methods, 0, NULL, 0, NULL};
  return &_ComFqLibPinyin4jTextHelper;
}

@end
