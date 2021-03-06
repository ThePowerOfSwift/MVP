//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/RecordItem.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/RecordItem.java"

#include "DES3Utils.h"
#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "PhotoRecord.h"
#include "Platform.h"
#include "RecordItem.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"


#line 17
@implementation ComFqHalcyonEntityRecordItem


#line 55
- (int)getRecordType {
  
#line 56
  return mType_;
}


#line 58
- (void)setRecordTypeWithInt:(int)type {
  
#line 59
  self->mType_ = type;
}


#line 61
- (FQJSONArray *)getNoteInfo {
  
#line 62
  return mNotoInfo_;
}


#line 64
- (void)setNoteInfoWithFQJSONArray:(FQJSONArray *)noteInfo {
  
#line 65
  self->mNotoInfo_ = noteInfo;
}


#line 67
- (JavaUtilArrayList *)getPhotos {
  
#line 68
  return mPhotos_;
}


#line 70
- (void)setPhotosWithJavaUtilArrayList:(JavaUtilArrayList *)photos {
  
#line 71
  self->mPhotos_ = photos;
}


#line 73
- (void)setExamsWithJavaUtilArrayList:(JavaUtilArrayList *)exams {
  
#line 74
  mExams_ = exams;
}


#line 76
- (JavaUtilArrayList *)getExams {
  
#line 77
  return mExams_;
}


#line 79
- (JavaUtilArrayList *)getOtherExams {
  
#line 80
  return mOtherExams_;
}


#line 82
- (void)setBaseInfoWithFQJSONArray:(FQJSONArray *)json {
  
#line 83
  mBaseInfo_ = json;
}


#line 85
- (FQJSONArray *)getBaseInfo {
  
#line 86
  return mBaseInfo_;
}


#line 88
- (int)getState {
  
#line 89
  return mState_;
}


#line 91
- (int)getRecordItemId {
  
#line 92
  return self->recordItemId_;
}


#line 94
- (int)getRecordInfoId {
  
#line 95
  return self->recordInfoId_;
}


#line 98
- (JavaUtilArrayList *)getTemplates {
  
#line 99
  return mTemplates_;
}


#line 103
- (BOOL)isShared {
  return mIsShared_;
}

- (void)setSharedWithBoolean:(BOOL)isShared {
  
#line 108
  mIsShared_ = isShared;
}


#line 112
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  [super setAtttributeByjsonWithFQJSONObject:json];
  
#line 115
  @try {
    mType_ = [((FQJSONObject *) nil_chk(json)) optIntWithNSString:@"record_type"];
    mState_ = [json optIntWithNSString:@"status"];
    recordInfoId_ = [json optIntWithNSString:@"record_info_id"];
    recordItemId_ = [json optIntWithNSString:@"record_item_id"];
    
#line 121
    NSString *baseInfo = [json optStringWithNSString:@"basic_info"];
    NSString *noteInfo = [json optStringWithNSString:@"note_info"];
    
#line 125
    @try {
      mBaseInfo_ = [[FQJSONArray alloc] initWithNSString:baseInfo];
    }
    @catch (
#line 127
    JavaLangException *e) {
      mBaseInfo_ = [[FQJSONArray alloc] init];
    }
    
#line 131
    NSString *base = [json optStringWithNSString:@"basic_identity_info"];
    if (base != nil && ![@"" isEqual:base] && [ComFqLibPlatformPlatform getInstance] != nil) {
      NSString *basic = [ComFqLibPlatformDES3Utils decryptModeWithByteArray:[base getBytes] withByteArray:[((ComFqLibPlatformPlatform *) nil_chk([ComFqLibPlatformPlatform getInstance])) getRecord3DesKey]];
      @try {
        FQJSONArray *infos = [[FQJSONArray alloc] initWithNSString:basic];
        for (int i = 0; i < [infos length]; i++) {
          (void) [((FQJSONArray *) nil_chk(mBaseInfo_)) putWithInt:i withId:[infos getWithInt:i]];
        }
      }
      @catch (
#line 139
      JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
    }
    
#line 146
    @try {
      mNotoInfo_ = [[FQJSONArray alloc] initWithNSString:noteInfo];
    }
    @catch (
#line 148
    JavaLangException *e) {
      mNotoInfo_ = [[FQJSONArray alloc] init];
    }
    
#line 152
    NSString *note = [json optStringWithNSString:@"basic_identity_info"];
    if (note != nil && ![@"" isEqual:base] && [ComFqLibPlatformPlatform getInstance] != nil) {
      NSString *noteinfo = [ComFqLibPlatformDES3Utils decryptModeWithByteArray:[((NSString *) nil_chk(base)) getBytes] withByteArray:[((ComFqLibPlatformPlatform *) nil_chk([ComFqLibPlatformPlatform getInstance])) getRecord3DesKey]];
      @try {
        FQJSONArray *notes = [[FQJSONArray alloc] initWithNSString:noteinfo];
        for (int i = 0; i < [notes length]; i++) {
          (void) [((FQJSONArray *) nil_chk(mNotoInfo_)) putWithInt:i withId:[notes getWithInt:i]];
        }
      }
      @catch (
#line 160
      JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
    }
    
#line 167
    FQJSONArray *photos = [json optJSONArrayWithNSString:@"images"];
    if (photos != nil) {
      for (int i = 0; i < [photos length]; i++) {
        ComFqHalcyonEntityPhotoRecord *photo = [[ComFqHalcyonEntityPhotoRecord alloc] init];
        [photo setAtttributeByjsonWithFQJSONObject:[photos getJSONObjectWithInt:i]];
        [((JavaUtilArrayList *) nil_chk(mPhotos_)) addWithId:photo];
      }
    }
    
#line 176
    if ([((JavaUtilArrayList *) nil_chk(mPhotos_)) size] == 0) {
      [mPhotos_ addWithId:[[ComFqHalcyonEntityPhotoRecord alloc] init]];
    }
    
#line 181
    FQJSONArray *exams = [json optJSONArrayWithNSString:@"examItems"];
    if (exams != nil && [exams length] != 0) {
      mExams_ = [[JavaUtilArrayList alloc] init];
      for (int i = 0; i < [exams length]; i++) {
        ComFqHalcyonEntityRecordItem_RecordExamItem *exam = [[ComFqHalcyonEntityRecordItem_RecordExamItem alloc] initWithComFqHalcyonEntityRecordItem:self];
        [exam setAtttributeByjsonWithFQJSONObject:[exams getJSONObjectWithInt:i]];
        [mExams_ addWithId:exam];
      }
    }
    
#line 192
    if (mExams_ == nil || [mExams_ size] == 0) {
      NSString *otin = [json optStringWithNSString:@"other_info"];
      FQJSONArray *otherinfos = [[FQJSONArray alloc] initWithNSString:otin];
      if (otherinfos != nil) {
        mOtherExams_ = [[JavaUtilArrayList alloc] init];
        for (int i = 0; i < [otherinfos length]; i++) {
          FQJSONArray *item = [otherinfos getJSONArrayWithInt:i];
          JavaUtilArrayList *info = [[JavaUtilArrayList alloc] init];
          for (int j = 0; j < [((FQJSONArray *) nil_chk(item)) length]; j++) {
            [info addWithId:[item getStringWithInt:j]];
          }
          [mOtherExams_ addWithId:info];
        }
      }
    }
    
#line 209
    FQJSONArray *temps = [json optJSONArrayWithNSString:@"templateItems"];
    if (temps != nil) {
      mTemplates_ = [[JavaUtilArrayList alloc] init];
      for (int i = 0; i < [temps length]; i++) {
        ComFqHalcyonEntityRecordItem_TemplateItem *temp = [[ComFqHalcyonEntityRecordItem_TemplateItem alloc] initWithComFqHalcyonEntityRecordItem:self];
        [temp setAtttributeByjsonWithFQJSONObject:[temps optJSONObjectWithInt:i]];
        if (temp->category_ == 2) [mTemplates_ addWithId:temp];
      }
    }
  }
  @catch (FQJSONException *e) {
    [((FQJSONException *) nil_chk(e)) printStackTrace];
  }
}


#line 225
- (FQJSONObject *)getJson {
  
#line 226
  FQJSONObject *json = [[FQJSONObject alloc] init];
  
#line 228
  @try {
    (void) [json putWithNSString:@"record_type" withInt:mType_];
    (void) [json putWithNSString:@"status" withInt:mState_];
    (void) [json putWithNSString:@"record_info_id" withInt:recordInfoId_];
    (void) [json putWithNSString:@"record_item_id" withInt:recordItemId_];
  }
  @catch (
#line 233
  JavaLangException *e) {
  }
  
#line 237
  if (mPhotos_ != nil) {
    FQJSONArray *photos = [[FQJSONArray alloc] init];
    for (int i = 0; i < [mPhotos_ size]; i++) {
      (void) [photos putWithId:[((ComFqHalcyonEntityPhotoRecord *) nil_chk([mPhotos_ getWithInt:i])) getJson]];
    }
    @try {
      (void) [json putWithNSString:@"images" withId:photos];
    }
    @catch (
#line 244
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 250
  if (mTemplates_ != nil) {
    FQJSONArray *temps = [[FQJSONArray alloc] init];
    for (int i = 0; i < [mTemplates_ size]; i++) {
      (void) [temps putWithId:[((ComFqHalcyonEntityRecordItem_TemplateItem *) nil_chk([mTemplates_ getWithInt:i])) getJson]];
    }
    @try {
      (void) [json putWithNSString:@"templateItems" withId:temps];
    }
    @catch (
#line 257
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 263
  if (mExams_ != nil) {
    FQJSONArray *exams = [[FQJSONArray alloc] init];
    for (int i = 0; i < [mExams_ size]; i++) {
      (void) [exams putWithId:[((ComFqHalcyonEntityRecordItem_RecordExamItem *) nil_chk([mExams_ getWithInt:i])) getJson]];
    }
    @try {
      (void) [json putWithNSString:@"examItems" withId:exams];
    }
    @catch (
#line 270
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 276
  if ((mExams_ == nil || [mExams_ size] == 0) && mOtherExams_ != nil) {
    FQJSONArray *otherinfos = [[FQJSONArray alloc] init];
    for (int i = 0; i < [mOtherExams_ size]; i++) {
      FQJSONArray *ary = [[FQJSONArray alloc] init];
      JavaUtilArrayList *items = [mOtherExams_ getWithInt:i];
      for (NSString * __strong str in nil_chk(items)) {
        (void) [ary putWithId:str];
      }
      (void) [otherinfos putWithId:ary];
    }
    @try {
      (void) [json putWithNSString:@"other_info" withId:[otherinfos description]];
    }
    @catch (
#line 288
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 294
  if (mBaseInfo_ != nil) {
    @try {
      (void) [json putWithNSString:@"basic_info" withId:[mBaseInfo_ description]];
    }
    @catch (
#line 297
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 303
  if (mNotoInfo_ != nil) {
    @try {
      (void) [json putWithNSString:@"note_info" withId:[mNotoInfo_ description]];
    }
    @catch (
#line 306
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 311
  return json;
}

- (id)init {
  if (self = [super init]) {
    mPhotos_ =
#line 53
    [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordItem *)other {
  [super copyAllFieldsTo:other];
  other->mBaseInfo_ = mBaseInfo_;
  other->mExams_ = mExams_;
  other->mIsShared_ = mIsShared_;
  other->mNotoInfo_ = mNotoInfo_;
  other->mOtherExams_ = mOtherExams_;
  other->mPhotos_ = mPhotos_;
  other->mState_ = mState_;
  other->mTemplates_ = mTemplates_;
  other->mType_ = mType_;
  other->recordInfoId_ = recordInfoId_;
  other->recordItemId_ = recordItemId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getRecordType", NULL, "I", 0x1, NULL },
    { "setRecordTypeWithInt:", "setRecordType", "V", 0x1, NULL },
    { "getNoteInfo", NULL, "Lcom.fq.lib.json.JSONArray;", 0x1, NULL },
    { "setNoteInfoWithFQJSONArray:", "setNoteInfo", "V", 0x1, NULL },
    { "getPhotos", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "setPhotosWithJavaUtilArrayList:", "setPhotos", "V", 0x1, NULL },
    { "setExamsWithJavaUtilArrayList:", "setExams", "V", 0x1, NULL },
    { "getExams", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "getOtherExams", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "setBaseInfoWithFQJSONArray:", "setBaseInfo", "V", 0x1, NULL },
    { "getBaseInfo", NULL, "Lcom.fq.lib.json.JSONArray;", 0x1, NULL },
    { "getState", NULL, "I", 0x1, NULL },
    { "getRecordItemId", NULL, "I", 0x1, NULL },
    { "getRecordInfoId", NULL, "I", 0x1, NULL },
    { "getTemplates", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "isShared", NULL, "Z", 0x1, NULL },
    { "setSharedWithBoolean:", "setShared", "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "getJson", NULL, "Lcom.fq.lib.json.JSONObject;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_RecordItem_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityRecordItem_serialVersionUID },
    { "mType_", NULL, 0x2, "I", NULL,  },
    { "mState_", NULL, 0x2, "I", NULL,  },
    { "recordInfoId_", NULL, 0x2, "I", NULL,  },
    { "recordItemId_", NULL, 0x2, "I", NULL,  },
    { "mIsShared_", NULL, 0x2, "Z", NULL,  },
    { "mBaseInfo_", NULL, 0x2, "Lcom.fq.lib.json.JSONArray;", NULL,  },
    { "mNotoInfo_", NULL, 0x2, "Lcom.fq.lib.json.JSONArray;", NULL,  },
    { "mExams_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "mOtherExams_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "mTemplates_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "mPhotos_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordItem = { "RecordItem", "com.fq.halcyon.entity", NULL, 0x1, 20, methods, 12, fields, 0, NULL};
  return &_ComFqHalcyonEntityRecordItem;
}

@end

#line 23

BOOL ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_initialized = NO;

ComFqHalcyonEntityRecordItem_EXAM_STATEEnum *ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_values[3];

@implementation ComFqHalcyonEntityRecordItem_EXAM_STATEEnum

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

+ (void)initialize {
  if (self == [ComFqHalcyonEntityRecordItem_EXAM_STATEEnum class]) {
    ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_M = [[ComFqHalcyonEntityRecordItem_EXAM_STATEEnum alloc] initWithNSString:@"M" withInt:0];
    ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_L = [[ComFqHalcyonEntityRecordItem_EXAM_STATEEnum alloc] initWithNSString:@"L" withInt:1];
    ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_H = [[ComFqHalcyonEntityRecordItem_EXAM_STATEEnum alloc] initWithNSString:@"H" withInt:2];
    ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_initialized = YES;
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithObjects:ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_values count:3 type:[IOSClass classWithClass:[ComFqHalcyonEntityRecordItem_EXAM_STATEEnum class]]];
}

+ (ComFqHalcyonEntityRecordItem_EXAM_STATEEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < 3; i++) {
    ComFqHalcyonEntityRecordItem_EXAM_STATEEnum *e = ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_values[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "M", "M", 0x4019, "Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;", &ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_M,  },
    { "L", "L", 0x4019, "Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;", &ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_L,  },
    { "H", "H", 0x4019, "Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;", &ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_H,  },
  };
  static const char *superclass_type_args[] = {"Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;"};
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordItem_EXAM_STATEEnum = { "EXAM_STATE", "com.fq.halcyon.entity", "RecordItem", 0x4019, 1, methods, 3, fields, 1, superclass_type_args};
  return &_ComFqHalcyonEntityRecordItem_EXAM_STATEEnum;
}

@end


#line 319
@implementation ComFqHalcyonEntityRecordItem_RecordExamItem


#line 330
- (NSString *)getValueState {
  
#line 331
  if (state_ == ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_get_L()) return @"\u2193";
  else if (state_ == ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_get_H()) return @"\u2191";
  else return @"";
}


#line 340
- (ComFqHalcyonEntityRecordItem_EXAM_STATEEnum *)getExamState {
  
#line 341
  return state_;
}


#line 348
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 349
  @try {
    name_RecordExamItem_ = [((FQJSONObject *) nil_chk(json)) optStringWithNSString:@"item_name"];
    unit_ = [json optStringWithNSString:@"item_unit"];
    expectValue_ = [json optStringWithNSString:@"expect_value"];
    examValus_ = [json optStringWithNSString:@"exam_value"];
    abn_ = [json optStringWithNSString:@"abnormal_value"];
    
#line 356
    if ([@"L" isEqual:abn_]) state_ = ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_get_L();
    else if ([@"H" isEqual:abn_]) state_ = ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_get_H();
    else state_ = ComFqHalcyonEntityRecordItem_EXAM_STATEEnum_get_M();
  }
  @catch (
#line 359
  JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}


#line 365
- (FQJSONObject *)getJson {
  
#line 366
  FQJSONObject *json = [[FQJSONObject alloc] init];
  @try {
    (void) [json putWithNSString:@"item_name" withId:name_RecordExamItem_];
    (void) [json putWithNSString:@"item_unit" withId:unit_];
    (void) [json putWithNSString:@"expect_value" withId:expectValue_];
    (void) [json putWithNSString:@"exam_value" withId:examValus_];
    (void) [json putWithNSString:@"abnormal_value" withId:abn_];
  }
  @catch (
#line 373
  JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  return json;
}

- (id)initWithComFqHalcyonEntityRecordItem:(ComFqHalcyonEntityRecordItem *)outer$ {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordItem_RecordExamItem *)other {
  [super copyAllFieldsTo:other];
  other->abn_ = abn_;
  other->examValus_ = examValus_;
  other->expectValue_ = expectValue_;
  other->name_RecordExamItem_ = name_RecordExamItem_;
  other->state_ = state_;
  other->unit_ = unit_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getValueState", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getExamState", NULL, "Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "getJson", NULL, "Lcom.fq.lib.json.JSONObject;", 0x1, NULL },
    { "initWithComFqHalcyonEntityRecordItem:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_RecordExamItem_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityRecordItem_RecordExamItem_serialVersionUID },
    { "name_RecordExamItem_", "name", 0x1, "Ljava.lang.String;", NULL,  },
    { "expectValue_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "examValus_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "unit_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "abn_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "state_", NULL, 0x2, "Lcom.fq.halcyon.entity.RecordItem$EXAM_STATE;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordItem_RecordExamItem = { "RecordExamItem", "com.fq.halcyon.entity", "RecordItem", 0x1, 5, methods, 7, fields, 0, NULL};
  return &_ComFqHalcyonEntityRecordItem_RecordExamItem;
}

@end


#line 388
@implementation ComFqHalcyonEntityRecordItem_TemplateItem


#line 398
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 399
  name_TemplateItem_ = [((FQJSONObject *) nil_chk(json)) optStringWithNSString:@"column_name"];
  sortId_ = [json optIntWithNSString:@"sort_id" withInt:-1];
  category_ = [json optIntWithNSString:@"column_category" withInt:-1];
}


#line 405
- (FQJSONObject *)getJson {
  FQJSONObject *json = [[FQJSONObject alloc] init];
  @try {
    (void) [json putWithNSString:@"column_name" withId:name_TemplateItem_];
    (void) [json putWithNSString:@"sort_id" withInt:sortId_];
    (void) [json putWithNSString:@"column_category" withInt:category_];
  }
  @catch (
#line 411
  JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  return json;
}

- (id)initWithComFqHalcyonEntityRecordItem:(ComFqHalcyonEntityRecordItem *)outer$ {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordItem_TemplateItem *)other {
  [super copyAllFieldsTo:other];
  other->category_ = category_;
  other->name_TemplateItem_ = name_TemplateItem_;
  other->sortId_ = sortId_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "getJson", NULL, "Lcom.fq.lib.json.JSONObject;", 0x1, NULL },
    { "initWithComFqHalcyonEntityRecordItem:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_TemplateItem_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityRecordItem_TemplateItem_serialVersionUID },
    { "name_TemplateItem_", "name", 0x1, "Ljava.lang.String;", NULL,  },
    { "sortId_", NULL, 0x1, "I", NULL,  },
    { "category_", NULL, 0x1, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordItem_TemplateItem = { "TemplateItem", "com.fq.halcyon.entity", "RecordItem", 0x1, 3, methods, 4, fields, 0, NULL};
  return &_ComFqHalcyonEntityRecordItem_TemplateItem;
}

@end
