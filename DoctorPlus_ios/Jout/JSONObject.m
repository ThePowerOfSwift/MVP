//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSONObject.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSONObject.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "JSON.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JSONStringer.h"
#include "JSONTokener.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/Package.h"
#include "java/lang/Short.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

BOOL FQJSONObject_initialized = NO;


#line 80
@implementation FQJSONObject

JavaLangDouble * FQJSONObject_NEGATIVE_ZERO_;
id FQJSONObject_NULL__;


#line 118
- (id)initFQJSONObject {
  if (self = [super init]) {
    
#line 119
    nameValuePairs_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (id)init {
  return [self initFQJSONObject];
}

- (id)initWithJavaUtilMap:(id<JavaUtilMap>)copyFrom {
  if (self =
#line 132
  [self initFQJSONObject]) {
    
#line 133
    id<JavaUtilMap> contentsTyped = (id<JavaUtilMap>) check_protocol_cast(copyFrom, @protocol(JavaUtilMap));
    
#line 134
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(contentsTyped)) entrySet])) {
      
#line 139
      NSString *key = (NSString *) check_class_cast([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey], [NSString class]);
      if (key == nil) {
        @throw [[JavaLangNullPointerException alloc] initWithNSString:@"key == null"];
      }
      (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:key withId:[FQJSONObject wrapWithId:[entry_ getValue]]];
    }
  }
  return self;
}


#line 156
- (id)initFQJSONObjectWithFQJSONTokener:(FQJSONTokener *)readFrom {
  if (self = [super init]) {
    
#line 161
    id object = [((FQJSONTokener *) nil_chk(readFrom)) nextValue];
    
#line 162
    if ([object isKindOfClass:[FQJSONObject class]]) {
      self->nameValuePairs_ = ((FQJSONObject *) nil_chk(((FQJSONObject *) check_class_cast(object, [FQJSONObject class]))))->nameValuePairs_;
    }
    else {
      
#line 165
      @throw [FQJSON typeMismatchWithId:object withNSString:@"JSONObject"];
    }
  }
  return self;
}

- (id)initWithFQJSONTokener:(FQJSONTokener *)readFrom {
  return [self initFQJSONObjectWithFQJSONTokener:readFrom];
}


#line 177
- (id)initWithNSString:(NSString *)json {
  return [self initFQJSONObjectWithFQJSONTokener:[[FQJSONTokener alloc] initWithNSString:json]];
}


#line 186
- (id)initWithFQJSONObject:(FQJSONObject *)copyFrom
         withNSStringArray:(IOSObjectArray *)names {
  if (self =
#line 187
  [self initFQJSONObject]) {
    {
      IOSObjectArray *a__ =
#line 188
      names;
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *name = (*b__++);
        
#line 189
        id value = [((FQJSONObject *) nil_chk(copyFrom)) optWithNSString:name];
        if (value != nil) {
          (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:name withId:value];
        }
      }
    }
  }
  return self;
}


#line 199
- (int)length {
  
#line 200
  return [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) size];
}


#line 209
- (FQJSONObject *)putWithNSString:(NSString *)name
                      withBoolean:(BOOL)value {
  
#line 210
  (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:[self checkNameWithNSString:name] withId:[JavaLangBoolean valueOfWithBoolean:value]];
  return self;
}


#line 222
- (FQJSONObject *)putWithNSString:(NSString *)name
                       withDouble:(double)value {
  
#line 223
  (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:[self checkNameWithNSString:name] withId:[JavaLangDouble valueOfWithDouble:[FQJSON checkDoubleWithDouble:value]]];
  return self;
}


#line 233
- (FQJSONObject *)putWithNSString:(NSString *)name
                          withInt:(int)value {
  
#line 234
  (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:[self checkNameWithNSString:name] withId:[JavaLangInteger valueOfWithInt:value]];
  return self;
}


#line 244
- (FQJSONObject *)putWithNSString:(NSString *)name
                         withLong:(long long int)value {
  
#line 245
  (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:[self checkNameWithNSString:name] withId:[JavaLangLong valueOfWithLong:value]];
  return self;
}


#line 260
- (FQJSONObject *)putWithNSString:(NSString *)name
                           withId:(id)value {
  
#line 261
  if (value == nil) {
    (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) removeWithId:name];
    return self;
  }
  if ([value isKindOfClass:[NSNumber class]]) {
    
#line 267
    [FQJSON checkDoubleWithDouble:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(value, [NSNumber class])))) doubleValue]];
  }
  (void) [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) putWithId:[self checkNameWithNSString:name] withId:value];
  return self;
}

- (FQJSONObject *)putOptWithNSString:(NSString *)name
                              withId:(id)value {
  
#line 278
  if (name == nil || value == nil) {
    return self;
  }
  return [self putWithNSString:name withId:value];
}


#line 296
- (FQJSONObject *)accumulateWithNSString:(NSString *)name
                                  withId:(id)value {
  
#line 297
  id current = [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) getWithId:[self checkNameWithNSString:name]];
  if (current == nil) {
    return [self putWithNSString:name withId:value];
  }
  
#line 303
  if ([value isKindOfClass:[NSNumber class]]) {
    [FQJSON checkDoubleWithDouble:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(value, [NSNumber class])))) doubleValue]];
  }
  
#line 307
  if ([current isKindOfClass:[FQJSONArray class]]) {
    FQJSONArray *array = (FQJSONArray *) check_class_cast(current, [FQJSONArray class]);
    (void) [((FQJSONArray *) nil_chk(array)) putWithId:value];
  }
  else {
    
#line 311
    FQJSONArray *array = [[FQJSONArray alloc] init];
    (void) [array putWithId:current];
    (void) [array putWithId:value];
    (void) [nameValuePairs_ putWithId:name withId:array];
  }
  return self;
}


#line 319
- (NSString *)checkNameWithNSString:(NSString *)name {
  
#line 320
  if (name == nil) {
    @throw [[FQJSONException alloc] initWithNSString:@"Names must be non-null"];
  }
  return name;
}


#line 332
- (id)removeWithNSString:(NSString *)name {
  
#line 333
  return [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) removeWithId:name];
}


#line 340
- (BOOL)isNullWithNSString:(NSString *)name {
  
#line 341
  id value = [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) getWithId:name];
  return value == nil || value == FQJSONObject_NULL__;
}


#line 349
- (BOOL)hasWithNSString:(NSString *)name {
  
#line 350
  return [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) containsKeyWithId:name];
}


#line 358
- (id)getWithNSString:(NSString *)name {
  
#line 359
  id result = [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) getWithId:name];
  if (result == nil) {
    @throw [[FQJSONException alloc] initWithNSString:[NSString stringWithFormat:@"No value for %@", name]];
  }
  return result;
}


#line 370
- (id)optWithNSString:(NSString *)name {
  
#line 371
  return [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) getWithId:name];
}


#line 381
- (BOOL)getBooleanWithNSString:(NSString *)name {
  
#line 382
  id object = [self getWithNSString:name];
  JavaLangBoolean *result = [FQJSON toBooleanWithId:object];
  if (result == nil) {
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"boolean"];
  }
  return [((JavaLangBoolean *) nil_chk(result)) booleanValue];
}


#line 394
- (BOOL)optBooleanWithNSString:(NSString *)name {
  
#line 395
  return [self optBooleanWithNSString:name withBoolean:NO];
}


#line 402
- (BOOL)optBooleanWithNSString:(NSString *)name
                   withBoolean:(BOOL)fallback {
  
#line 403
  id object = [self optWithNSString:name];
  JavaLangBoolean *result = [FQJSON toBooleanWithId:object];
  return result != nil ? [result booleanValue] : fallback;
}


#line 415
- (double)getDoubleWithNSString:(NSString *)name {
  
#line 416
  id object = [self getWithNSString:name];
  JavaLangDouble *result = [FQJSON toDoubleWithId:object];
  if (result == nil) {
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"double"];
  }
  return [((JavaLangDouble *) nil_chk(result)) doubleValue];
}


#line 428
- (double)optDoubleWithNSString:(NSString *)name {
  
#line 429
  return [self optDoubleWithNSString:name withDouble:JavaLangDouble_NaN];
}


#line 436
- (double)optDoubleWithNSString:(NSString *)name
                     withDouble:(double)fallback {
  
#line 437
  id object = [self optWithNSString:name];
  JavaLangDouble *result = [FQJSON toDoubleWithId:object];
  return result != nil ? [result doubleValue] : fallback;
}


#line 449
- (int)getIntWithNSString:(NSString *)name {
  
#line 450
  id object = [self getWithNSString:name];
  JavaLangInteger *result = [FQJSON toIntegerWithId:object];
  if (result == nil) {
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"int"];
  }
  return [((JavaLangInteger *) nil_chk(result)) intValue];
}


#line 462
- (int)optIntWithNSString:(NSString *)name {
  
#line 463
  return [self optIntWithNSString:name withInt:0];
}


#line 470
- (int)optIntWithNSString:(NSString *)name
                  withInt:(int)fallback {
  
#line 471
  id object = [self optWithNSString:name];
  JavaLangInteger *result = [FQJSON toIntegerWithId:object];
  return result != nil ? [result intValue] : fallback;
}


#line 484
- (long long int)getLongWithNSString:(NSString *)name {
  
#line 485
  id object = [self getWithNSString:name];
  JavaLangLong *result = [FQJSON toLongWithId:object];
  if (result == nil) {
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"long"];
  }
  return [((JavaLangLong *) nil_chk(result)) longLongValue];
}


#line 498
- (long long int)optLongWithNSString:(NSString *)name {
  
#line 499
  return [self optLongWithNSString:name withLong:0LL];
}


#line 508
- (long long int)optLongWithNSString:(NSString *)name
                            withLong:(long long int)fallback {
  
#line 509
  id object = [self optWithNSString:name];
  JavaLangLong *result = [FQJSON toLongWithId:object];
  return result != nil ? [result longLongValue] : fallback;
}


#line 520
- (NSString *)getStringWithNSString:(NSString *)name {
  
#line 521
  id object = [self getWithNSString:name];
  NSString *result = [FQJSON toStringWithId:object];
  if (result == nil) {
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"String"];
  }
  return result;
}


#line 533
- (NSString *)optStringWithNSString:(NSString *)name {
  
#line 534
  return [self optStringWithNSString:name withNSString:@""];
}


#line 541
- (NSString *)optStringWithNSString:(NSString *)name
                       withNSString:(NSString *)fallback {
  
#line 542
  id object = [self optWithNSString:name];
  NSString *result = [FQJSON toStringWithId:object];
  return result != nil ? result : fallback;
}


#line 554
- (FQJSONArray *)getJSONArrayWithNSString:(NSString *)name {
  
#line 555
  id object = [self getWithNSString:name];
  if ([object isKindOfClass:[FQJSONArray class]]) {
    return (FQJSONArray *) check_class_cast(object, [FQJSONArray class]);
  }
  else {
    
#line 559
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"JSONArray"];
  }
}


#line 567
- (FQJSONArray *)optJSONArrayWithNSString:(NSString *)name {
  id object = [self optWithNSString:name];
  return [object isKindOfClass:[FQJSONArray class]] ? (FQJSONArray *) check_class_cast(object, [FQJSONArray class]) : nil;
}


#line 579
- (FQJSONObject *)getJSONObjectWithNSString:(NSString *)name {
  
#line 580
  id object = [self getWithNSString:name];
  if ([object isKindOfClass:[FQJSONObject class]]) {
    return (FQJSONObject *) check_class_cast(object, [FQJSONObject class]);
  }
  else {
    
#line 584
    @throw [FQJSON typeMismatchWithId:name withId:object withNSString:@"JSONObject"];
  }
}


#line 592
- (FQJSONObject *)optJSONObjectWithNSString:(NSString *)name {
  id object = [self optWithNSString:name];
  return [object isKindOfClass:[FQJSONObject class]] ? (FQJSONObject *) check_class_cast(object, [FQJSONObject class]) : nil;
}


#line 602
- (FQJSONArray *)toJSONArrayWithFQJSONArray:(FQJSONArray *)names {
  
#line 603
  FQJSONArray *result = [[FQJSONArray alloc] init];
  if (names == nil) {
    return nil;
  }
  int length = [((FQJSONArray *) nil_chk(names)) length];
  if (length == 0) {
    return nil;
  }
  for (int i = 0; i < length; i++) {
    NSString *name = [FQJSON toStringWithId:[names optWithInt:i]];
    (void) [result putWithId:[self optWithNSString:name]];
  }
  return result;
}


#line 626
- (id<JavaUtilIterator>)keys {
  
#line 627
  return [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(nameValuePairs_)) keySet])) iterator];
}


#line 634
- (FQJSONArray *)names {
  
#line 635
  return [((id<JavaUtilMap>) nil_chk(nameValuePairs_)) isEmpty] ?
#line 636
  nil :
#line 637
  [[FQJSONArray alloc] initWithJavaUtilCollection:[[JavaUtilArrayList alloc] initWithJavaUtilCollection:[nameValuePairs_ keySet]]];
}

- (NSString *)description {
  
#line 645
  @try {
    FQJSONStringer *stringer = [[FQJSONStringer alloc] init];
    [self writeToWithFQJSONStringer:stringer];
    return [stringer description];
  }
  @catch (
#line 649
  FQJSONException *e) {
    return nil;
  }
}


#line 669
- (NSString *)toStringWithInt:(int)indentSpaces {
  
#line 670
  FQJSONStringer *stringer = [[FQJSONStringer alloc] initWithInt:indentSpaces];
  [self writeToWithFQJSONStringer:stringer];
  return [stringer description];
}


#line 675
- (void)writeToWithFQJSONStringer:(FQJSONStringer *)stringer {
  
#line 676
  (void) [((FQJSONStringer *) nil_chk(stringer)) object];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(nameValuePairs_)) entrySet])) {
    (void) [((FQJSONStringer *) nil_chk([stringer keyWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]])) valueWithId:[entry_ getValue]];
  }
  (void) [stringer endObject];
}


#line 689
+ (NSString *)numberToStringWithNSNumber:(NSNumber *)number {
  
#line 690
  if (number == nil) {
    @throw [[FQJSONException alloc] initWithNSString:@"Number must be non-null"];
  }
  
#line 694
  double doubleValue = [((NSNumber *) nil_chk(number)) doubleValue];
  [FQJSON checkDoubleWithDouble:doubleValue];
  
#line 698
  if ([number isEqual:FQJSONObject_NEGATIVE_ZERO_]) {
    return @"-0";
  }
  
#line 702
  long long int longValue = [number longLongValue];
  if (doubleValue == (double) longValue) {
    return [JavaLangLong toStringWithLong:longValue];
  }
  
#line 707
  return [number description];
}


#line 717
+ (NSString *)quoteWithNSString:(NSString *)data {
  
#line 718
  if (data == nil) {
    return @"\"\"";
  }
  @try {
    FQJSONStringer *stringer = [[FQJSONStringer alloc] init];
    (void) [stringer openWithFQJSONStringer_ScopeEnum:FQJSONStringer_ScopeEnum_get_NULL_() withNSString:@""];
    (void) [stringer valueWithId:data];
    (void) [stringer closeWithFQJSONStringer_ScopeEnum:FQJSONStringer_ScopeEnum_get_NULL_() withFQJSONStringer_ScopeEnum:FQJSONStringer_ScopeEnum_get_NULL_() withNSString:@""];
    return [stringer description];
  }
  @catch (
#line 727
  FQJSONException *e) {
    @throw [[JavaLangAssertionError alloc] init];
  }
}


#line 744
+ (id)wrapWithId:(id)o {
  
#line 745
  if (o == nil) {
    return FQJSONObject_NULL__;
  }
  if ([o isKindOfClass:[FQJSONArray class]] || [o isKindOfClass:[FQJSONObject class]]) {
    return o;
  }
  if ([nil_chk(o) isEqual:FQJSONObject_NULL__]) {
    return o;
  }
  @try {
    if ([o conformsToProtocol: @protocol(JavaUtilCollection)]) {
      return [[FQJSONArray alloc] initWithJavaUtilCollection:(id<JavaUtilCollection>) check_protocol_cast(o, @protocol(JavaUtilCollection))];
    }
    else
#line 757
    if ([[o getClass] isArray]) {
      return [[FQJSONArray alloc] initWithId:o];
    }
    if ([o conformsToProtocol: @protocol(JavaUtilMap)]) {
      return [[FQJSONObject alloc] initWithJavaUtilMap:(id<JavaUtilMap>) check_protocol_cast(o, @protocol(JavaUtilMap))];
    }
    if ([o isKindOfClass:[JavaLangBoolean class]] ||
#line 764
    [o isKindOfClass:[JavaLangByte class]] ||
#line 765
    [o isKindOfClass:[JavaLangCharacter class]] ||
#line 766
    [o isKindOfClass:[JavaLangDouble class]] ||
#line 767
    [o isKindOfClass:[JavaLangFloat class]] ||
#line 768
    [o isKindOfClass:[JavaLangInteger class]] ||
#line 769
    [o isKindOfClass:[JavaLangLong class]] ||
#line 770
    [o isKindOfClass:[JavaLangShort class]] ||
#line 771
    [o isKindOfClass:[NSString class]]) {
      return o;
    }
    if ([((NSString *) nil_chk([((JavaLangPackage *) nil_chk([[o getClass] getPackage])) getName])) hasPrefix:@"java."]) {
      return [o description];
    }
  }
  @catch (
#line 777
  JavaLangException *ignored) {
  }
  return nil;
}

+ (void)initialize {
  if (self == [FQJSONObject class]) {
    FQJSONObject_NEGATIVE_ZERO_ = [JavaLangDouble valueOfWithDouble:
#line 87
    -0.0];
    FQJSONObject_NULL__ =
#line 104
    [[FQJSONObject_$1 alloc] init];
    FQJSONObject_initialized = YES;
  }
}

- (void)copyAllFieldsTo:(FQJSONObject *)other {
  [super copyAllFieldsTo:other];
  other->nameValuePairs_ = nameValuePairs_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "JSONObject", NULL, 0x1, NULL },
    { "initWithJavaUtilMap:", "JSONObject", NULL, 0x1, NULL },
    { "initWithFQJSONTokener:", "JSONObject", NULL, 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "initWithNSString:", "JSONObject", NULL, 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "initWithFQJSONObject:withNSStringArray:", "JSONObject", NULL, 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "length", NULL, "I", 0x1, NULL },
    { "putWithNSString:withBoolean:", "put", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "putWithNSString:withDouble:", "put", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "putWithNSString:withInt:", "put", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "putWithNSString:withLong:", "put", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "putWithNSString:withId:", "put", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "putOptWithNSString:withId:", "putOpt", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "accumulateWithNSString:withId:", "accumulate", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "checkNameWithNSString:", "checkName", "Ljava.lang.String;", 0x0, "Lcom.fq.lib.json.JSONException;" },
    { "removeWithNSString:", "remove", "Ljava.lang.Object;", 0x1, NULL },
    { "isNullWithNSString:", "isNull", "Z", 0x1, NULL },
    { "hasWithNSString:", "has", "Z", 0x1, NULL },
    { "getWithNSString:", "get", "Ljava.lang.Object;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optWithNSString:", "opt", "Ljava.lang.Object;", 0x1, NULL },
    { "getBooleanWithNSString:", "getBoolean", "Z", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optBooleanWithNSString:", "optBoolean", "Z", 0x1, NULL },
    { "optBooleanWithNSString:withBoolean:", "optBoolean", "Z", 0x1, NULL },
    { "getDoubleWithNSString:", "getDouble", "D", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optDoubleWithNSString:", "optDouble", "D", 0x1, NULL },
    { "optDoubleWithNSString:withDouble:", "optDouble", "D", 0x1, NULL },
    { "getIntWithNSString:", "getInt", "I", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optIntWithNSString:", "optInt", "I", 0x1, NULL },
    { "optIntWithNSString:withInt:", "optInt", "I", 0x1, NULL },
    { "getLongWithNSString:", "getLong", "J", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optLongWithNSString:", "optLong", "J", 0x1, NULL },
    { "optLongWithNSString:withLong:", "optLong", "J", 0x1, NULL },
    { "getStringWithNSString:", "getString", "Ljava.lang.String;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optStringWithNSString:", "optString", "Ljava.lang.String;", 0x1, NULL },
    { "optStringWithNSString:withNSString:", "optString", "Ljava.lang.String;", 0x1, NULL },
    { "getJSONArrayWithNSString:", "getJSONArray", "Lcom.fq.lib.json.JSONArray;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optJSONArrayWithNSString:", "optJSONArray", "Lcom.fq.lib.json.JSONArray;", 0x1, NULL },
    { "getJSONObjectWithNSString:", "getJSONObject", "Lcom.fq.lib.json.JSONObject;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "optJSONObjectWithNSString:", "optJSONObject", "Lcom.fq.lib.json.JSONObject;", 0x1, NULL },
    { "toJSONArrayWithFQJSONArray:", "toJSONArray", "Lcom.fq.lib.json.JSONArray;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "keys", NULL, "Ljava.util.Iterator;", 0x1, NULL },
    { "names", NULL, "Lcom.fq.lib.json.JSONArray;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, "Lcom.fq.lib.json.JSONException;" },
    { "writeToWithFQJSONStringer:", "writeTo", "V", 0x0, "Lcom.fq.lib.json.JSONException;" },
    { "numberToStringWithNSNumber:", "numberToString", "Ljava.lang.String;", 0x9, "Lcom.fq.lib.json.JSONException;" },
    { "quoteWithNSString:", "quote", "Ljava.lang.String;", 0x9, NULL },
    { "wrapWithId:", "wrap", "Ljava.lang.Object;", 0x9, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = FQJSONObject_serialVersionUID },
    { "NEGATIVE_ZERO_", NULL, 0x1a, "Ljava.lang.Double;", &FQJSONObject_NEGATIVE_ZERO_,  },
    { "NULL__", "NULL", 0x19, "Ljava.lang.Object;", &FQJSONObject_NULL__,  },
    { "nameValuePairs_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
  };
  static J2ObjcClassInfo _FQJSONObject = { "JSONObject", "com.fq.lib.json", NULL, 0x1, 47, methods, 4, fields, 0, NULL};
  return &_FQJSONObject;
}

@end

@implementation FQJSONObject_$1

- (BOOL)isEqual:(id)o {
  
#line 106
  return o == self || o == nil;
}

- (NSString *)description {
  
#line 109
  return @"null";
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _FQJSONObject_$1 = { "$1", "com.fq.lib.json", "JSONObject", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_FQJSONObject_$1;
}

@end
