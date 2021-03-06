//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/visualize/VisualData.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/visualize/VisualData.java"

#include "UriConstants.h"
#include "VisualData.h"
#include "VisualizeEntity.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"


#line 12
@implementation ComFqHalcyonEntityVisualizeVisualData


#line 23
- (id)initWithComFqHalcyonEntityVisualizeVisualizeEntity_VISUALTYPEEnum:(ComFqHalcyonEntityVisualizeVisualizeEntity_VISUALTYPEEnum *)tp {
  if (self = [super init]) {
    
#line 24
    type_ = tp;
  }
  return self;
}


#line 28
- (void)setDataColumnWithNSString:(NSString *)data {
  
#line 29
  dataColumn_ = data;
}


#line 35
- (void)setRecordIdsWithJavaUtilArrayList:(JavaUtilArrayList *)ids {
  
#line 36
  recordIds_ = ids;
}

- (NSString *)getURL {
  
#line 42
  return [NSString stringWithFormat:@"%@?%@&%@&%@&%@", [ComFqLibToolsUriConstants getVasualDataURL], [self getPraUserId], [self getPraDataType], [self getPraDataColumn], [self getPraRecordIds]];
}


#line 46
- (NSString *)getPraDataType {
  if (type_ == ComFqHalcyonEntityVisualizeVisualizeEntity_VISUALTYPEEnum_get_DRUGS()) {
    return @"dataType='drugs'";
  }
  return @"dataType='exams'";
}


#line 54
- (NSString *)getPraDataColumn {
  
#line 55
  return [NSString stringWithFormat:@"dataColumn='%@'", dataColumn_];
}


#line 59
- (NSString *)getPraRecordIds {
  if (recordIds_ == nil || [recordIds_ size] == 0) return @"";
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] initWithNSString:@"recordIds='"];
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(recordIds_)) size]; i++) {
    if (i != 0) (void) [buf appendWithNSString:@";"];
    (void) [buf appendWithNSString:[NSString stringWithFormat:@"%@", [recordIds_ getWithInt:i]]];
  }
  (void) [buf appendWithNSString:@"'"];
  return [buf description];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityVisualizeVisualData *)other {
  [super copyAllFieldsTo:other];
  other->dataColumn_ = dataColumn_;
  other->recordIds_ = recordIds_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComFqHalcyonEntityVisualizeVisualizeEntity_VISUALTYPEEnum:", "VisualData", NULL, 0x1, NULL },
    { "setDataColumnWithNSString:", "setDataColumn", "V", 0x1, NULL },
    { "setRecordIdsWithJavaUtilArrayList:", "setRecordIds", "V", 0x1, NULL },
    { "getURL", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPraDataType", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPraDataColumn", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPraRecordIds", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_VisualData_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityVisualizeVisualData_serialVersionUID },
    { "dataColumn_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "recordIds_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityVisualizeVisualData = { "VisualData", "com.fq.halcyon.entity.visualize", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonEntityVisualizeVisualData;
}

@end
