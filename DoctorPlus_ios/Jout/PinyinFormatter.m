//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/PinyinFormatter.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/pinyin4j/PinyinFormatter.java"

#include "BadHanyuPinyinOutputFormatCombination.h"
#include "HanyuPinyinCaseType.h"
#include "HanyuPinyinOutputFormat.h"
#include "HanyuPinyinToneType.h"
#include "HanyuPinyinVCharType.h"
#include "IOSClass.h"
#include "PinyinFormatter.h"
#include "java/lang/Character.h"
#include "java/lang/StringBuffer.h"


#line 28
@implementation ComFqLibPinyin4jPinyinFormatter


#line 38
+ (NSString *)formatHanyuPinyinWithNSString:(NSString *)pinyinStr
withComFqLibPinyin4jHanyuPinyinOutputFormat:(ComFqLibPinyin4jHanyuPinyinOutputFormat *)outputFormat {
  
#line 42
  if ((ComFqLibPinyin4jHanyuPinyinToneType_get_WITH_TONE_MARK_() == [((ComFqLibPinyin4jHanyuPinyinOutputFormat *) nil_chk(outputFormat)) getToneType]) &&
#line 43
  ((ComFqLibPinyin4jHanyuPinyinVCharType_get_WITH_V_() == [outputFormat getVCharType]) || (ComFqLibPinyin4jHanyuPinyinVCharType_get_WITH_U_AND_COLON_() == [outputFormat getVCharType]))) {
    
#line 45
    @throw [[ComFqLibPinyin4jBadHanyuPinyinOutputFormatCombination alloc] initWithNSString:@"tone marks cannot be added to v or u:"];
  }
  
#line 48
  if (ComFqLibPinyin4jHanyuPinyinToneType_get_WITHOUT_TONE_() == [outputFormat getToneType]) {
    
#line 50
    pinyinStr = [((NSString *) nil_chk(pinyinStr)) replaceAll:@"[1-5]" withReplacement:@""];
  }
  else
#line 51
  if (ComFqLibPinyin4jHanyuPinyinToneType_get_WITH_TONE_MARK_() == [outputFormat getToneType]) {
    
#line 53
    pinyinStr = [((NSString *) nil_chk(pinyinStr)) replaceAll:@"u:" withReplacement:@"v"];
    pinyinStr = [ComFqLibPinyin4jPinyinFormatter convertToneNumber2ToneMarkWithNSString:pinyinStr];
  }
  
#line 57
  if (ComFqLibPinyin4jHanyuPinyinVCharType_get_WITH_V_() == [outputFormat getVCharType]) {
    
#line 59
    pinyinStr = [((NSString *) nil_chk(pinyinStr)) replaceAll:@"u:" withReplacement:@"v"];
  }
  else
#line 60
  if (ComFqLibPinyin4jHanyuPinyinVCharType_get_WITH_U_UNICODE_() == [outputFormat getVCharType]) {
    
#line 62
    pinyinStr = [((NSString *) nil_chk(pinyinStr)) replaceAll:@"u:" withReplacement:@"\u00fc"];
  }
  
#line 65
  if (ComFqLibPinyin4jHanyuPinyinCaseType_get_UPPERCASE_() == [outputFormat getCaseType]) {
    
#line 67
    pinyinStr = [((NSString *) nil_chk(pinyinStr)) uppercaseString];
  }
  return pinyinStr;
}


#line 97
+ (NSString *)convertToneNumber2ToneMarkWithNSString:(NSString *)pinyinStr {
  
#line 99
  NSString *lowerCasePinyinStr = [((NSString *) nil_chk(pinyinStr)) lowercaseString];
  
#line 101
  if ([((NSString *) nil_chk(lowerCasePinyinStr)) matches:@"[a-z]*[1-5]?"]) {
    
#line 103
    unichar defautlCharValue = '$';
    int defautlIndexValue = -1;
    
#line 106
    unichar unmarkedVowel = defautlCharValue;
    int indexOfUnmarkedVowel = defautlIndexValue;
    
#line 109
    unichar charA = 'a';
    unichar charE = 'e';
    NSString *ouStr = @"ou";
    NSString *allUnmarkedVowelStr = @"aeiouv";
    NSString *allMarkedVowelStr = @"\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc";
    
#line 115
    if ([lowerCasePinyinStr matches:@"[a-z]*[1-5]"]) {
      
#line 118
      int tuneNumber = [JavaLangCharacter getNumericValueWithChar:[lowerCasePinyinStr charAtWithInt:((int) [lowerCasePinyinStr length]) - 1]];
      
#line 120
      int indexOfA = [lowerCasePinyinStr indexOf:charA];
      int indexOfE = [lowerCasePinyinStr indexOf:charE];
      int ouIndex = [lowerCasePinyinStr indexOfString:ouStr];
      
#line 124
      if (-1 != indexOfA) {
        
#line 126
        indexOfUnmarkedVowel = indexOfA;
        unmarkedVowel = charA;
      }
      else
#line 128
      if (-1 != indexOfE) {
        
#line 130
        indexOfUnmarkedVowel = indexOfE;
        unmarkedVowel = charE;
      }
      else
#line 132
      if (-1 != ouIndex) {
        
#line 134
        indexOfUnmarkedVowel = ouIndex;
        unmarkedVowel = [ouStr charAtWithInt:0];
      }
      else {
        for (int i = ((int) [lowerCasePinyinStr length]) - 1; i >= 0; i--) {
          
#line 140
          if ([((NSString *) nil_chk([NSString valueOfChar:[lowerCasePinyinStr charAtWithInt:i]])) matches:@"[aeiouv]"]) {
            
#line 143
            indexOfUnmarkedVowel = i;
            unmarkedVowel = [lowerCasePinyinStr charAtWithInt:i];
            break;
          }
        }
      }
      
#line 150
      if ((defautlCharValue != unmarkedVowel) &&
#line 151
      (defautlIndexValue != indexOfUnmarkedVowel)) {
        
#line 153
        int rowIndex = [allUnmarkedVowelStr indexOf:unmarkedVowel];
        int columnIndex = tuneNumber - 1;
        
#line 156
        int vowelLocation = rowIndex * 5 + columnIndex;
        
#line 158
        unichar markedVowel = [allMarkedVowelStr charAtWithInt:vowelLocation];
        
#line 160
        JavaLangStringBuffer *resultBuffer = [[JavaLangStringBuffer alloc] init];
        
#line 162
        (void) [resultBuffer appendWithNSString:[((NSString *) nil_chk([lowerCasePinyinStr substring:0 endIndex:indexOfUnmarkedVowel])) replaceAll:@"v" withReplacement:@"\u00fc"]];
        (void) [resultBuffer appendWithChar:markedVowel];
        (void) [resultBuffer appendWithNSString:[((NSString *) nil_chk([lowerCasePinyinStr substring:indexOfUnmarkedVowel + 1 endIndex:((int) [lowerCasePinyinStr length]) - 1])) replaceAll:@"v" withReplacement:@"\u00fc"]];
        
#line 166
        return [resultBuffer description];
      }
      else {
        
#line 171
        return lowerCasePinyinStr;
      }
    }
    else {
      
#line 177
      return [lowerCasePinyinStr replaceAll:@"v" withReplacement:@"\u00fc"];
    }
  }
  else {
    
#line 182
    return lowerCasePinyinStr;
  }
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "formatHanyuPinyinWithNSString:withComFqLibPinyin4jHanyuPinyinOutputFormat:", "formatHanyuPinyin", "Ljava.lang.String;", 0x8, "Lcom.fq.lib.pinyin4j.BadHanyuPinyinOutputFormatCombination;" },
    { "convertToneNumber2ToneMarkWithNSString:", "convertToneNumber2ToneMark", "Ljava.lang.String;", 0xa, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _ComFqLibPinyin4jPinyinFormatter = { "PinyinFormatter", "com.fq.lib.pinyin4j", NULL, 0x0, 3, methods, 0, NULL, 0, NULL};
  return &_ComFqLibPinyin4jPinyinFormatter;
}

@end
