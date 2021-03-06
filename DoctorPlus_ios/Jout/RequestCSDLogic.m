//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/RequestCSDLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/RequestCSDLogic.java"

#include "ApiSystem.h"
#include "City.h"
#include "Constants.h"
#include "Department.h"
#include "FQHttpParams.h"
#include "Hospital.h"
#include "HttpRequestPotocol.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "RequestCSDLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 21
@implementation ComFqHalcyonLogic2RequestCSDLogic

- (void)requestCityWithComFqHalcyonLogic2RequestCSDLogic_ResCityInf:(id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>)feed {
  
#line 24
  NSString *url = [NSString stringWithFormat:@"%@/pub/list_cities.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  NSString *localData = nil;
  
#line 27
  FQJSONObject *localresult = nil;
  FQJSONObject *json = [[FQJSONObject alloc] init];
  if (localData == nil || [@"" isEqual:localData]) {
    @try {
      (void) [json putWithNSString:@"version" withInt:0];
    }
    @catch (
#line 32
    FQJSONException *e) {
      [((FQJSONException *) nil_chk(e)) printStackTrace];
    }
  }
  else {
    
#line 36
    @try {
      FQJSONObject *local = [[FQJSONObject alloc] initWithNSString:localData];
      localresult = [local optJSONObjectWithNSString:@"results"];
      (void) [json putWithNSString:@"version" withInt:[((FQJSONObject *) nil_chk(localresult)) optIntWithNSString:@"version"]];
    }
    @catch (
#line 40
    JavaLangException *e1) {
      [((JavaLangException *) nil_chk(e1)) printStackTrace];
      @try {
        (void) [json putWithNSString:@"version" withInt:0];
      }
      @catch (
#line 44
      FQJSONException *e) {
        [((FQJSONException *) nil_chk(e)) printStackTrace];
      }
    }
  }
  
#line 50
  FQJSONObject *localResult = localresult;
  
#line 52
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_BROW() withHalcyonHttpResponseHandle:
#line 53
  [[ComFqHalcyonLogic2RequestCSDLogic_$1 alloc] initWithComFqHalcyonLogic2RequestCSDLogic:self withFQJSONObject:localResult withComFqHalcyonLogic2RequestCSDLogic_ResCityInf:feed]];
}


#line 88
- (void)requestDepartmentWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:(id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>)callback {
  
#line 89
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  
#line 92
  FQJSONObject *json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
  NSString *url = [NSString stringWithFormat:@"%@/pub/list_departments.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_BROW() withHalcyonHttpResponseHandle:
#line 95
  [[ComFqHalcyonLogic2RequestCSDLogic_$2 alloc] initWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:callback]];
}


#line 123
- (void)requestHospitalWithNSString:(NSString *)cityName
                        withBoolean:(BOOL)isSchool
withComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:(id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>)inf {
  
#line 124
  NSString *url = @"";
  FQJSONObject *json = nil;
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  if (isSchool) {
    (void) [map putWithId:@"city_name" withId:cityName];
    json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    url = [NSString stringWithFormat:@"%@/mediStudent/get_university_info.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  }
  else {
    
#line 132
    (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
    (void) [map putWithId:@"city_name" withId:cityName];
    json = [ComFqLibJsonHelper createJsonWithJavaUtilMap:map];
    url = [NSString stringWithFormat:@"%@/pub/list_hospitals.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  }
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:[[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:json] withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_BROW() withHalcyonHttpResponseHandle:[[ComFqHalcyonLogic2RequestCSDLogic_$3 alloc] initWithComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:inf]];
}


#line 204
- (JavaUtilArrayList *)getCitysByJsonWithFQJSONObject:(FQJSONObject *)json {
  
#line 205
  JavaUtilArrayList *citys = [[JavaUtilArrayList alloc] init];
  @try {
    FQJSONArray *cityas = [((FQJSONObject *) nil_chk(json)) optJSONArrayWithNSString:@"citys"];
    for (int i = 0; i < [((FQJSONArray *) nil_chk(cityas)) length]; i++) {
      @try {
        
#line 211
        ComFqHalcyonEntityCity *city = [[ComFqHalcyonEntityCity alloc] init];
        [city setAtttributeByjsonWithFQJSONObject:[cityas getJSONObjectWithInt:i]];
        [citys addWithId:city];
      }
      @catch (
#line 214
      JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
    }
  }
  @catch (
#line 218
  JavaLangException *e) {
  }
  return citys;
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "requestCityWithComFqHalcyonLogic2RequestCSDLogic_ResCityInf:", "requestCity", "V", 0x1, NULL },
    { "requestDepartmentWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:", "requestDepartment", "V", 0x1, NULL },
    { "requestHospitalWithNSString:withBoolean:withComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:", "requestHospital", "V", 0x1, NULL },
    { "getCitysByJsonWithFQJSONObject:", "getCitysByJson", "Ljava.util.ArrayList;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic = { "RequestCSDLogic", "com.fq.halcyon.logic2", NULL, 0x1, 5, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic;
}

@end

@interface ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf : NSObject
@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "feedHospitalWithJavaUtilArrayList:", "feedHospital", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf = { "RequetHospitalInf", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf;
}

@end

@interface ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment : NSObject
@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "feedDepartmentWithJavaUtilArrayList:", "feedDepartment", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment = { "FeedSaveDepartment", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment;
}

@end

@interface ComFqHalcyonLogic2RequestCSDLogic_ResCityInf : NSObject
@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_ResCityInf

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "feedCityWithJavaUtilArrayList:", "feedCity", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_ResCityInf = { "ResCityInf", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_ResCityInf;
}

@end

@interface ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback : NSObject
@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback = { "OnMajorCallback", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x201, 0, NULL, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_OnMajorCallback;
}

@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_$1


#line 55
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 56
  if (val$localResult_ != nil) {
    [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) feedCityWithJavaUtilArrayList:[this$0_ getCitysByJsonWithFQJSONObject:val$localResult_]];
  }
  else {
    
#line 59
    [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) onErrorWithInt:code withJavaLangThrowable:e];
  }
}


#line 64
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 66
  if (responseCode == 0) {
    FQJSONObject *jsonObj = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    if ([((FQJSONObject *) nil_chk(jsonObj)) isNullWithNSString:@"citys"]) {
      if (val$localResult_ != nil) {
        [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) feedCityWithJavaUtilArrayList:[this$0_ getCitysByJsonWithFQJSONObject:val$localResult_]];
      }
      else {
        
#line 72
        [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) onErrorWithInt:responseCode withJavaLangThrowable:[[JavaLangThrowable alloc] initWithNSString:msg]];
      }
    }
    else {
      
#line 75
      [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) feedCityWithJavaUtilArrayList:[this$0_ getCitysByJsonWithFQJSONObject:jsonObj]];
    }
  }
  else {
    
#line 78
    if (val$localResult_ != nil) {
      [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) feedCityWithJavaUtilArrayList:[this$0_ getCitysByJsonWithFQJSONObject:val$localResult_]];
    }
    else {
      
#line 81
      [((id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>) nil_chk(val$feed_)) onErrorWithInt:responseCode withJavaLangThrowable:[[JavaLangThrowable alloc] initWithNSString:msg]];
    }
  }
}

- (id)initWithComFqHalcyonLogic2RequestCSDLogic:(ComFqHalcyonLogic2RequestCSDLogic *)outer$
                               withFQJSONObject:(FQJSONObject *)capture$0
withComFqHalcyonLogic2RequestCSDLogic_ResCityInf:(id<ComFqHalcyonLogic2RequestCSDLogic_ResCityInf>)capture$1 {
  this$0_ = outer$;
  val$localResult_ = capture$0;
  val$feed_ = capture$1;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2RequestCSDLogic:withFQJSONObject:withComFqHalcyonLogic2RequestCSDLogic_ResCityInf:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.RequestCSDLogic;", NULL,  },
    { "val$localResult_", NULL, 0x1012, "Lcom.fq.lib.json.JSONObject;", NULL,  },
    { "val$feed_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.RequestCSDLogic$ResCityInf;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_$1 = { "$1", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x8000, 3, methods, 3, fields, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_$1;
}

@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_$2


#line 98
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 99
  [((id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>) nil_chk(val$callback_)) onErrorWithInt:code withJavaLangThrowable:e];
}


#line 103
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 104
  JavaUtilArrayList *departments = [[JavaUtilArrayList alloc] init];
  if (responseCode == 0 && type == 2) {
    FQJSONArray *array = (FQJSONArray *) check_class_cast(results, [FQJSONArray class]);
    for (int i = 0; i < [((FQJSONArray *) nil_chk(array)) length]; i++) {
      @try {
        FQJSONObject *jobj = [array getJSONObjectWithInt:i];
        
#line 111
        ComFqHalcyonEntityDepartment *dep = [[ComFqHalcyonEntityDepartment alloc] init];
        [dep setAtttributeByjsonWithFQJSONObject:jobj];
        [departments addWithId:dep];
      }
      @catch (
#line 114
      FQJSONException *e) {
      }
    }
  }
  [((id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>) nil_chk(val$callback_)) feedDepartmentWithJavaUtilArrayList:departments];
}

- (id)initWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:(id<ComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2RequestCSDLogic_FeedSaveDepartment:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$callback_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.RequestCSDLogic$FeedSaveDepartment;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_$2 = { "$2", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_$2;
}

@end

@implementation ComFqHalcyonLogic2RequestCSDLogic_$3


#line 138
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 139
  [((id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>) nil_chk(val$inf_)) onErrorWithInt:code withJavaLangThrowable:e];
}


#line 141
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 142
  if (responseCode == 0 && type == 2) {
    FQJSONArray *array = (FQJSONArray *) check_class_cast(results, [FQJSONArray class]);
    if (array == nil) [((id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>) nil_chk(val$inf_)) onErrorWithInt:responseCode withJavaLangThrowable:[[JavaLangThrowable alloc] initWithNSString:msg]];
    
#line 146
    JavaUtilArrayList *hospitals = [[JavaUtilArrayList alloc] init];
    for (int i = 0; i < [((FQJSONArray *) nil_chk(array)) length]; i++) {
      @try {
        
#line 151
        ComFqHalcyonEntityHospital *hos = [[ComFqHalcyonEntityHospital alloc] init];
        [hos setAtttributeByjsonWithFQJSONObject:[array getJSONObjectWithInt:i]];
        [hospitals addWithId:hos];
      }
      @catch (
#line 154
      JavaLangException *e) {
        [((JavaLangException *) nil_chk(e)) printStackTrace];
      }
    }
    [((id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>) nil_chk(val$inf_)) feedHospitalWithJavaUtilArrayList:hospitals];
  }
  else {
    
#line 160
    [((id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>) nil_chk(val$inf_)) onErrorWithInt:responseCode withJavaLangThrowable:[[JavaLangThrowable alloc] initWithNSString:msg]];
  }
}

- (id)initWithComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:(id<ComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf>)capture$0 {
  val$inf_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2RequestCSDLogic_RequetHospitalInf:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$inf_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.RequestCSDLogic$RequetHospitalInf;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2RequestCSDLogic_$3 = { "$3", "com.fq.halcyon.logic2", "RequestCSDLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2RequestCSDLogic_$3;
}

@end
