//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/PinyinRomanizationType.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/PinyinRomanizationType.java"

#include "PinyinRomanizationType.h"

BOOL ComFqLibPinyin4jPinyinRomanizationType_initialized = NO;


#line 30
@implementation ComFqLibPinyin4jPinyinRomanizationType

ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_HANYU_PINYIN_;
ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_WADEGILES_PINYIN_;
ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_MPS2_PINYIN_;
ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_YALE_PINYIN_;
ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_TONGYONG_PINYIN_;
ComFqLibPinyin4jPinyinRomanizationType * ComFqLibPinyin4jPinyinRomanizationType_GWOYEU_ROMATZYH_;


#line 65
- (id)initWithNSString:(NSString *)tagName {
  if (self = [super init]) {
    
#line 67
    [self setTagNameWithNSString:tagName];
  }
  return self;
}


#line 73
- (NSString *)getTagName {
  
#line 75
  return tagName_;
}


#line 82
- (void)setTagNameWithNSString:(NSString *)tagName {
  
#line 84
  self->tagName_ = tagName;
}

+ (void)initialize {
  if (self == [ComFqLibPinyin4jPinyinRomanizationType class]) {
    ComFqLibPinyin4jPinyinRomanizationType_HANYU_PINYIN_ =
#line 35
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"Hanyu"];
    ComFqLibPinyin4jPinyinRomanizationType_WADEGILES_PINYIN_ =
#line 40
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"Wade"];
    ComFqLibPinyin4jPinyinRomanizationType_MPS2_PINYIN_ =
#line 45
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"MPSII"];
    ComFqLibPinyin4jPinyinRomanizationType_YALE_PINYIN_ =
#line 50
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"Yale"];
    ComFqLibPinyin4jPinyinRomanizationType_TONGYONG_PINYIN_ =
#line 55
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"Tongyong"];
    ComFqLibPinyin4jPinyinRomanizationType_GWOYEU_ROMATZYH_ =
#line 60
    [[ComFqLibPinyin4jPinyinRomanizationType alloc] initWithNSString:@"Gwoyeu"];
    ComFqLibPinyin4jPinyinRomanizationType_initialized = YES;
  }
}

- (void)copyAllFieldsTo:(ComFqLibPinyin4jPinyinRomanizationType *)other {
  [super copyAllFieldsTo:other];
  other->tagName_ = tagName_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "PinyinRomanizationType", NULL, 0x4, NULL },
    { "getTagName", NULL, "Ljava.lang.String;", 0x0, NULL },
    { "setTagNameWithNSString:", "setTagName", "V", 0x4, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "HANYU_PINYIN_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_HANYU_PINYIN_,  },
    { "WADEGILES_PINYIN_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_WADEGILES_PINYIN_,  },
    { "MPS2_PINYIN_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_MPS2_PINYIN_,  },
    { "YALE_PINYIN_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_YALE_PINYIN_,  },
    { "TONGYONG_PINYIN_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_TONGYONG_PINYIN_,  },
    { "GWOYEU_ROMATZYH_", NULL, 0x18, "Lcom.fq.lib.pinyin4j.PinyinRomanizationType;", &ComFqLibPinyin4jPinyinRomanizationType_GWOYEU_ROMATZYH_,  },
    { "tagName_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqLibPinyin4jPinyinRomanizationType = { "PinyinRomanizationType", "com.fq.lib.pinyin4j", NULL, 0x0, 3, methods, 7, fields, 0, NULL};
  return &_ComFqLibPinyin4jPinyinRomanizationType;
}

@end
