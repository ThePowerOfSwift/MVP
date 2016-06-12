//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Patient.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Patient.java"

#include "JSONArray.h"
#include "JSONObject.h"
#include "Patient.h"


#line 9
@implementation ComFqHalcyonEntityPatient


#line 48
- (int)getMedicalId {
  
#line 49
  return medicalId_;
}


#line 52
- (void)setMedicalIdWithInt:(int)medicalId {
  
#line 53
  self->medicalId_ = medicalId;
}


#line 56
- (NSString *)getMedicalName {
  
#line 57
  return medicalName_;
}


#line 60
- (void)setMedicalNameWithNSString:(NSString *)medicalName {
  
#line 61
  self->medicalName_ = medicalName;
}


#line 64
- (int)getMedicalFromType {
  
#line 65
  return medicalFromType_;
}


#line 68
- (void)setMedicalFromTypeWithInt:(int)medicalFromType {
  
#line 69
  self->medicalFromType_ = medicalFromType;
}


#line 72
- (NSString *)getMedicalFrom {
  
#line 73
  return medicalFrom_ == nil ? @"" : medicalFrom_;
}


#line 76
- (void)setMedicalFromWithNSString:(NSString *)medicalFrom {
  
#line 77
  self->medicalFrom_ = medicalFrom;
}


#line 80
- (NSString *)getCreateTime {
  
#line 81
  return createTime_;
}


#line 84
- (void)setCreateTimeWithNSString:(NSString *)createTime {
  
#line 85
  self->createTime_ = createTime;
}


#line 88
- (int)getRecordCount {
  
#line 89
  return recordCount_;
}


#line 92
- (void)setRecordCountWithInt:(int)recordCount {
  
#line 93
  self->recordCount_ = recordCount;
}


#line 96
- (int)getNotRecCount {
  
#line 97
  return notRecCount_;
}


#line 100
- (void)setNotRecCountWithInt:(int)notRecCount {
  
#line 101
  self->notRecCount_ = notRecCount;
}


#line 104
- (int)getFromUserType {
  
#line 105
  return fromUserType_;
}


#line 108
- (void)setFromUserTypeWithInt:(int)fromUserType {
  
#line 109
  self->fromUserType_ = fromUserType;
}


#line 113
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  self->medicalId_ = [((FQJSONObject *) nil_chk(json)) optIntWithNSString:@"patient_id"];
  self->createTime_ = [json optStringWithNSString:@"create_time"];
  self->medicalName_ = [json optStringWithNSString:@"patient_name"];
  self->medicalFromType_ = [json optIntWithNSString:@"source_from"];
  self->recordCount_ = [json optIntWithNSString:@"record_count"];
  self->notRecCount_ = [json optIntWithNSString:@"unrecong_count"];
  FQJSONArray *jsonArr = [json optJSONArrayWithNSString:@"patient_from"];
  if (jsonArr != nil) {
    for (int i = 0; i < [jsonArr length]; i++) {
      FQJSONObject *obj = [jsonArr optJSONObjectWithInt:0];
      self->medicalFrom_ = [((FQJSONObject *) nil_chk(obj)) optStringWithNSString:@"name"];
      self->fromUserType_ = [obj optIntWithNSString:@"role_type"];
    }
  }
}


#line 132
- (void)test {
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityPatient *)other {
  [super copyAllFieldsTo:other];
  other->createTime_ = createTime_;
  other->fromUserType_ = fromUserType_;
  other->medicalFrom_ = medicalFrom_;
  other->medicalFromType_ = medicalFromType_;
  other->medicalId_ = medicalId_;
  other->medicalName_ = medicalName_;
  other->notRecCount_ = notRecCount_;
  other->recordCount_ = recordCount_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getMedicalId", NULL, "I", 0x1, NULL },
    { "setMedicalIdWithInt:", "setMedicalId", "V", 0x1, NULL },
    { "getMedicalName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setMedicalNameWithNSString:", "setMedicalName", "V", 0x1, NULL },
    { "getMedicalFromType", NULL, "I", 0x1, NULL },
    { "setMedicalFromTypeWithInt:", "setMedicalFromType", "V", 0x1, NULL },
    { "getMedicalFrom", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setMedicalFromWithNSString:", "setMedicalFrom", "V", 0x1, NULL },
    { "getCreateTime", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setCreateTimeWithNSString:", "setCreateTime", "V", 0x1, NULL },
    { "getRecordCount", NULL, "I", 0x1, NULL },
    { "setRecordCountWithInt:", "setRecordCount", "V", 0x1, NULL },
    { "getNotRecCount", NULL, "I", 0x1, NULL },
    { "setNotRecCountWithInt:", "setNotRecCount", "V", 0x1, NULL },
    { "getFromUserType", NULL, "I", 0x1, NULL },
    { "setFromUserTypeWithInt:", "setFromUserType", "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "test", NULL, "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_Patient_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityPatient_serialVersionUID },
    { "medicalId_", NULL, 0x2, "I", NULL,  },
    { "medicalName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "medicalFromType_", NULL, 0x2, "I", NULL,  },
    { "medicalFrom_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "createTime_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "recordCount_", NULL, 0x2, "I", NULL,  },
    { "notRecCount_", NULL, 0x2, "I", NULL,  },
    { "fromUserType_", NULL, 0x2, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityPatient = { "Patient", "com.fq.halcyon.entity", NULL, 0x1, 19, methods, 9, fields, 0, NULL};
  return &_ComFqHalcyonEntityPatient;
}

@end
