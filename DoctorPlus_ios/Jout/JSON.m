//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSON.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSON.java"

#include "IOSClass.h"
#include "JSON.h"
#include "JSONException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"


#line 21
@implementation FQJSON


#line 25
+ (double)checkDoubleWithDouble:(double)d {
  
#line 26
  if ([JavaLangDouble isInfiniteWithDouble:d] || [JavaLangDouble isNaNWithDouble:d]) {
    @throw [[FQJSONException alloc] initWithNSString:[NSString stringWithFormat:@"Forbidden numeric value: %f", d]];
  }
  return d;
}


#line 32
+ (JavaLangBoolean *)toBooleanWithId:(id)value {
  
#line 33
  if ([value isKindOfClass:[JavaLangBoolean class]]) {
    return (JavaLangBoolean *) check_class_cast(value, [JavaLangBoolean class]);
  }
  else
#line 35
  if ([value isKindOfClass:[NSString class]]) {
    NSString *stringValue = (NSString *) check_class_cast(value, [NSString class]);
    if ([@"true" equalsIgnoreCase:stringValue]) {
      return [JavaLangBoolean valueOfWithBoolean:YES];
    }
    else
#line 39
    if ([@"false" equalsIgnoreCase:stringValue]) {
      return [JavaLangBoolean valueOfWithBoolean:NO];
    }
  }
  return nil;
}


#line 46
+ (JavaLangDouble *)toDoubleWithId:(id)value {
  
#line 47
  if ([value isKindOfClass:[JavaLangDouble class]]) {
    return (JavaLangDouble *) check_class_cast(value, [JavaLangDouble class]);
  }
  else
#line 49
  if ([value isKindOfClass:[NSNumber class]]) {
    return [JavaLangDouble valueOfWithDouble:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(value, [NSNumber class])))) doubleValue]];
  }
  else
#line 51
  if ([value isKindOfClass:[NSString class]]) {
    @try {
      return [JavaLangDouble valueOfWithNSString:(NSString *) check_class_cast(value, [NSString class])];
    }
    @catch (
#line 54
    JavaLangNumberFormatException *ignored) {
    }
  }
  return nil;
}


#line 60
+ (JavaLangInteger *)toIntegerWithId:(id)value {
  
#line 61
  if ([value isKindOfClass:[JavaLangInteger class]]) {
    return (JavaLangInteger *) check_class_cast(value, [JavaLangInteger class]);
  }
  else
#line 63
  if ([value isKindOfClass:[NSNumber class]]) {
    return [JavaLangInteger valueOfWithInt:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(value, [NSNumber class])))) intValue]];
  }
  else
#line 65
  if ([value isKindOfClass:[NSString class]]) {
    @try {
      return [JavaLangInteger valueOfWithInt:J2ObjCFpToInt([JavaLangDouble parseDoubleWithNSString:(NSString *) check_class_cast(value, [NSString class])])];
    }
    @catch (
#line 68
    JavaLangNumberFormatException *ignored) {
    }
  }
  return nil;
}


#line 74
+ (JavaLangLong *)toLongWithId:(id)value {
  
#line 75
  if ([value isKindOfClass:[JavaLangLong class]]) {
    return (JavaLangLong *) check_class_cast(value, [JavaLangLong class]);
  }
  else
#line 77
  if ([value isKindOfClass:[NSNumber class]]) {
    return [JavaLangLong valueOfWithLong:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(value, [NSNumber class])))) longLongValue]];
  }
  else
#line 79
  if ([value isKindOfClass:[NSString class]]) {
    @try {
      return [JavaLangLong valueOfWithLong:J2ObjCFpToLong([JavaLangDouble parseDoubleWithNSString:(NSString *) check_class_cast(value, [NSString class])])];
    }
    @catch (
#line 82
    JavaLangNumberFormatException *ignored) {
    }
  }
  return nil;
}


#line 88
+ (NSString *)toStringWithId:(id)value {
  
#line 89
  if ([value isKindOfClass:[NSString class]]) {
    return (NSString *) check_class_cast(value, [NSString class]);
  }
  else
#line 91
  if (value != nil) {
    return [NSString valueOf:value];
  }
  return nil;
}


#line 97
+ (FQJSONException *)typeMismatchWithId:(id)indexOrName
                                 withId:(id)actual
                           withNSString:(NSString *)requiredType {
  
#line 99
  if (actual == nil) {
    @throw [[FQJSONException alloc] initWithNSString:[NSString stringWithFormat:@"Value at %@ is null.", indexOrName]];
  }
  else {
    
#line 102
    @throw [[FQJSONException alloc] initWithNSString:[NSString stringWithFormat:@"Value %@ at %@ of type %@ cannot be converted to %@", actual, indexOrName,
#line 103
    [[actual getClass] getName],
#line 104
    requiredType]];
  }
}


#line 108
+ (FQJSONException *)typeMismatchWithId:(id)actual
                           withNSString:(NSString *)requiredType {
  
#line 110
  if (actual == nil) {
    @throw [[FQJSONException alloc] initWithNSString:@"Value is null."];
  }
  else {
    
#line 113
    @throw [[FQJSONException alloc] initWithNSString:[NSString stringWithFormat:@"Value %@ of type %@ cannot be converted to %@", actual,
#line 114
    [[actual getClass] getName],
#line 115
    requiredType]];
  }
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "checkDoubleWithDouble:", "checkDouble", "D", 0x8, "Lcom.fq.lib.json.JSONException;" },
    { "toBooleanWithId:", "toBoolean", "Ljava.lang.Boolean;", 0x8, NULL },
    { "toDoubleWithId:", "toDouble", "Ljava.lang.Double;", 0x8, NULL },
    { "toIntegerWithId:", "toInteger", "Ljava.lang.Integer;", 0x8, NULL },
    { "toLongWithId:", "toLong", "Ljava.lang.Long;", 0x8, NULL },
    { "toStringWithId:", "toString", "Ljava.lang.String;", 0x8, NULL },
    { "typeMismatchWithId:withId:withNSString:", "typeMismatch", "Lcom.fq.lib.json.JSONException;", 0x9, "Lcom.fq.lib.json.JSONException;" },
    { "typeMismatchWithId:withNSString:", "typeMismatch", "Lcom.fq.lib.json.JSONException;", 0x9, "Lcom.fq.lib.json.JSONException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FQJSON = { "JSON", "com.fq.lib.json", NULL, 0x0, 9, methods, 0, NULL, 0, NULL};
  return &_FQJSON;
}

@end
