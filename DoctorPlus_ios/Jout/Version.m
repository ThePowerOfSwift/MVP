//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Version.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Version.java"

#include "JSONObject.h"
#include "Version.h"


#line 5
@implementation ComFqHalcyonEntityVersion


#line 10
- (void)test {
}


#line 18
- (NSString *)getVersionName {
  
#line 19
  return versionName_;
}


#line 21
- (void)setVersionNameWithNSString:(NSString *)versionName {
  
#line 22
  self->versionName_ = versionName;
}


#line 24
- (int)getVersionCode {
  
#line 25
  return versionCode_;
}


#line 27
- (void)setVersionCodeWithInt:(int)versionCode {
  
#line 28
  self->versionCode_ = versionCode;
}


#line 30
- (int)getMinCode {
  
#line 31
  return minCode_;
}


#line 33
- (void)setMinCodeWithInt:(int)minCode {
  
#line 34
  self->minCode_ = minCode;
}


#line 36
- (NSString *)getUpdateUrl {
  
#line 37
  return updateUrl_;
}


#line 39
- (void)setUpdateUrlWithNSString:(NSString *)updateUrl {
  
#line 40
  self->updateUrl_ = updateUrl;
}


#line 43
- (NSString *)getUpdateDes {
  
#line 44
  return self->updateDes_;
}

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 50
  [super setAtttributeByjsonWithFQJSONObject:json];
  self->versionName_ = [((FQJSONObject *) nil_chk(json)) optStringWithNSString:@"version_name"];
  self->versionCode_ = [json optIntWithNSString:@"version_code"];
  self->minCode_ = [json optIntWithNSString:@"min_version_code"];
  self->updateUrl_ = [json optStringWithNSString:@"update_url"];
  self->updateDes_ = [json optStringWithNSString:@"update_des"];
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityVersion *)other {
  [super copyAllFieldsTo:other];
  other->minCode_ = minCode_;
  other->updateDes_ = updateDes_;
  other->updateUrl_ = updateUrl_;
  other->versionCode_ = versionCode_;
  other->versionName_ = versionName_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "test", NULL, "V", 0x1, NULL },
    { "getVersionName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setVersionNameWithNSString:", "setVersionName", "V", 0x1, NULL },
    { "getVersionCode", NULL, "I", 0x1, NULL },
    { "setVersionCodeWithInt:", "setVersionCode", "V", 0x1, NULL },
    { "getMinCode", NULL, "I", 0x1, NULL },
    { "setMinCodeWithInt:", "setMinCode", "V", 0x1, NULL },
    { "getUpdateUrl", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setUpdateUrlWithNSString:", "setUpdateUrl", "V", 0x1, NULL },
    { "getUpdateDes", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_Version_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityVersion_serialVersionUID },
    { "versionName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "versionCode_", NULL, 0x2, "I", NULL,  },
    { "minCode_", NULL, 0x2, "I", NULL,  },
    { "updateUrl_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "updateDes_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityVersion = { "Version", "com.fq.halcyon.entity", NULL, 0x1, 12, methods, 6, fields, 0, NULL};
  return &_ComFqHalcyonEntityVersion;
}

@end