//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Medicine.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Medicine.java"

#include "JSONObject.h"
#include "Medicine.h"


#line 5
@implementation ComFqHalcyonEntityMedicine


#line 14
- (NSString *)getName {
  
#line 15
  return name_Medicine_;
}


#line 18
- (void)setNameWithNSString:(NSString *)name {
  
#line 19
  self->name_Medicine_ = name;
}


#line 22
- (int)getMedicineId {
  
#line 23
  return id__;
}


#line 26
- (void)setMedicineIdWithInt:(int)hospitalId {
  
#line 27
  self->id__ = hospitalId;
}


#line 31
- (void)test {
}


#line 36
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 37
  [super setAtttributeByjsonWithFQJSONObject:json];
  self->id__ = [((FQJSONObject *) nil_chk(json)) optIntWithNSString:@"id"];
  self->name_Medicine_ = [json optStringWithNSString:@"name"];
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityMedicine *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->name_Medicine_ = name_Medicine_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setNameWithNSString:", "setName", "V", 0x1, NULL },
    { "getMedicineId", NULL, "I", 0x1, NULL },
    { "setMedicineIdWithInt:", "setMedicineId", "V", 0x1, NULL },
    { "test", NULL, "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_Medicine_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityMedicine_serialVersionUID },
    { "id__", "id", 0x2, "I", NULL,  },
    { "name_Medicine_", "name", 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityMedicine = { "Medicine", "com.fq.halcyon.entity", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonEntityMedicine;
}

@end
