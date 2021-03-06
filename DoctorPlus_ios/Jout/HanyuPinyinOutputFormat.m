//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/HanyuPinyinOutputFormat.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/HanyuPinyinOutputFormat.java"

#include "HanyuPinyinCaseType.h"
#include "HanyuPinyinOutputFormat.h"
#include "HanyuPinyinToneType.h"
#include "HanyuPinyinVCharType.h"


#line 116
@implementation ComFqLibPinyin4jHanyuPinyinOutputFormat


#line 119
- (id)init {
  if (self = [super init]) {
    
#line 121
    [self restoreDefault];
  }
  return self;
}


#line 134
- (void)restoreDefault {
  
#line 136
  vCharType_ = ComFqLibPinyin4jHanyuPinyinVCharType_get_WITH_U_AND_COLON_();
  caseType_ = ComFqLibPinyin4jHanyuPinyinCaseType_get_LOWERCASE_();
  toneType_ = ComFqLibPinyin4jHanyuPinyinToneType_get_WITH_TONE_NUMBER_();
}


#line 146
- (ComFqLibPinyin4jHanyuPinyinCaseType *)getCaseType {
  
#line 148
  return caseType_;
}


#line 159
- (void)setCaseTypeWithComFqLibPinyin4jHanyuPinyinCaseType:(ComFqLibPinyin4jHanyuPinyinCaseType *)caseType {
  
#line 161
  self->caseType_ = caseType;
}


#line 169
- (ComFqLibPinyin4jHanyuPinyinToneType *)getToneType {
  
#line 171
  return toneType_;
}


#line 182
- (void)setToneTypeWithComFqLibPinyin4jHanyuPinyinToneType:(ComFqLibPinyin4jHanyuPinyinToneType *)toneType {
  
#line 184
  self->toneType_ = toneType;
}


#line 192
- (ComFqLibPinyin4jHanyuPinyinVCharType *)getVCharType {
  
#line 194
  return vCharType_;
}


#line 205
- (void)setVCharTypeWithComFqLibPinyin4jHanyuPinyinVCharType:(ComFqLibPinyin4jHanyuPinyinVCharType *)charType {
  
#line 207
  vCharType_ = charType;
}

- (void)copyAllFieldsTo:(ComFqLibPinyin4jHanyuPinyinOutputFormat *)other {
  [super copyAllFieldsTo:other];
  other->caseType_ = caseType_;
  other->toneType_ = toneType_;
  other->vCharType_ = vCharType_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "HanyuPinyinOutputFormat", NULL, 0x1, NULL },
    { "restoreDefault", NULL, "V", 0x1, NULL },
    { "getCaseType", NULL, "Lcom.fq.lib.pinyin4j.HanyuPinyinCaseType;", 0x1, NULL },
    { "setCaseTypeWithComFqLibPinyin4jHanyuPinyinCaseType:", "setCaseType", "V", 0x1, NULL },
    { "getToneType", NULL, "Lcom.fq.lib.pinyin4j.HanyuPinyinToneType;", 0x1, NULL },
    { "setToneTypeWithComFqLibPinyin4jHanyuPinyinToneType:", "setToneType", "V", 0x1, NULL },
    { "getVCharType", NULL, "Lcom.fq.lib.pinyin4j.HanyuPinyinVCharType;", 0x1, NULL },
    { "setVCharTypeWithComFqLibPinyin4jHanyuPinyinVCharType:", "setVCharType", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "vCharType_", NULL, 0x2, "Lcom.fq.lib.pinyin4j.HanyuPinyinVCharType;", NULL,  },
    { "caseType_", NULL, 0x2, "Lcom.fq.lib.pinyin4j.HanyuPinyinCaseType;", NULL,  },
    { "toneType_", NULL, 0x2, "Lcom.fq.lib.pinyin4j.HanyuPinyinToneType;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqLibPinyin4jHanyuPinyinOutputFormat = { "HanyuPinyinOutputFormat", "com.fq.lib.pinyin4j", NULL, 0x11, 8, methods, 3, fields, 0, NULL};
  return &_ComFqLibPinyin4jHanyuPinyinOutputFormat;
}

@end
