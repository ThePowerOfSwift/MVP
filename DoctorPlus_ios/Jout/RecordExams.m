//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/RecordExams.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/RecordExams.java"

#include "JSONArray.h"
#include "JSONObject.h"
#include "RecordExams.h"
#include "java/util/ArrayList.h"


#line 8
@implementation ComFqHalcyonEntityRecordExams


#line 23
- (NSString *)getName {
  
#line 24
  return self->item_name_;
}


#line 27
- (int)getDocPatientId {
  
#line 28
  return self->doctorPatientId_;
}


#line 31
- (JavaUtilArrayList *)getEXamDates {
  
#line 32
  return self->items_;
}


#line 61
- (void)test {
}


#line 65
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 66
  [super setAtttributeByjsonWithFQJSONObject:json];
  self->doctorPatientId_ = [((FQJSONObject *) nil_chk(json)) optIntWithNSString:@"doctorPatientId"];
  self->item_name_ = [json optStringWithNSString:@"item_name"];
  FQJSONArray *itemsArray = [json optJSONArrayWithNSString:@"items"];
  if (itemsArray != nil) {
    items_ = [[JavaUtilArrayList alloc] init];
    for (int i = 0; i < [itemsArray length]; i++) {
      ComFqHalcyonEntityRecordExams_ExamDate *date = [[ComFqHalcyonEntityRecordExams_ExamDate alloc] initWithComFqHalcyonEntityRecordExams:self];
      [date setAtttributeByjsonWithFQJSONObject:[itemsArray optJSONObjectWithInt:i]];
      [items_ addWithId:date];
    }
  }
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordExams *)other {
  [super copyAllFieldsTo:other];
  other->doctorPatientId_ = doctorPatientId_;
  other->item_name_ = item_name_;
  other->items_ = items_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getDocPatientId", NULL, "I", 0x1, NULL },
    { "getEXamDates", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "test", NULL, "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_RecordExams_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityRecordExams_serialVersionUID },
    { "items_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "item_name_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "doctorPatientId_", NULL, 0x2, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordExams = { "RecordExams", "com.fq.halcyon.entity", NULL, 0x1, 6, methods, 4, fields, 0, NULL};
  return &_ComFqHalcyonEntityRecordExams;
}

@end


#line 35
@implementation ComFqHalcyonEntityRecordExams_ExamDate


#line 40
- (NSString *)getDate {
  
#line 41
  return self->exam_date_;
}


#line 44
- (NSString *)getValue {
  
#line 45
  return self->item_value_;
}


#line 49
- (void)test {
}


#line 53
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 54
  [super setAtttributeByjsonWithFQJSONObject:json];
  self->exam_date_ = [((FQJSONObject *) nil_chk(json)) optStringWithNSString:@"exam_date"];
  self->item_value_ = [json optStringWithNSString:@"item_value"];
}

- (id)initWithComFqHalcyonEntityRecordExams:(ComFqHalcyonEntityRecordExams *)outer$ {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordExams_ExamDate *)other {
  [super copyAllFieldsTo:other];
  other->exam_date_ = exam_date_;
  other->item_value_ = item_value_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getDate", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getValue", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "test", NULL, "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "initWithComFqHalcyonEntityRecordExams:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "exam_date_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "item_value_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityRecordExams_ExamDate = { "ExamDate", "com.fq.halcyon.entity", "RecordExams", 0x1, 5, methods, 2, fields, 0, NULL};
  return &_ComFqHalcyonEntityRecordExams_ExamDate;
}

@end