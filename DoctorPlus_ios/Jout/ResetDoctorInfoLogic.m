//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ResetDoctorInfoLogic.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/ResetDoctorInfoLogic.java"

#include "ApiSystem.h"
#include "Constants.h"
#include "FQHttpParams.h"
#include "FileSystem.h"
#include "HalcyonUploadLooper.h"
#include "HttpRequestPotocol.h"
#include "JSONObject.h"
#include "JsonHelper.h"
#include "LoopCell.h"
#include "ResetDoctorInfoLogic.h"
#include "UriConstants.h"
#include "User.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"


#line 18
@implementation ComFqHalcyonLogic2ResetDoctorInfoLogic

- (void)reqModyHeadWithInt:(int)imageId {
  
#line 21
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"head_pic_image_id" withId:[JavaLangInteger valueOfWithInt:imageId]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 26
- (void)reqModyNameWithNSString:(NSString *)name {
  
#line 27
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"name" withId:name];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 32
- (void)reqModyCityWithInt:(int)cityId {
  
#line 33
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"city_id" withId:[JavaLangInteger valueOfWithInt:cityId]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 38
- (void)reqModyHospWithInt:(int)cityId
                   withInt:(int)hosId
              withNSString:(NSString *)hospName {
  
#line 39
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  if (hosId == 0) {
    (void) [map putWithId:@"hospital_name" withId:hospName];
  }
  else {
    
#line 43
    (void) [map putWithId:@"hospital_id" withId:[JavaLangInteger valueOfWithInt:hosId]];
  }
  if (cityId != 0) (void) [map putWithId:@"city_id" withId:[JavaLangInteger valueOfWithInt:cityId]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 49
- (void)reqModyDeptWithInt:(int)deptId
                   withInt:(int)secId
              withNSString:(NSString *)name {
  
#line 50
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  if (deptId != 0) {
    (void) [map putWithId:@"dept_id" withId:[JavaLangInteger valueOfWithInt:deptId]];
  }
  (void) [map putWithId:@"dept_second_name" withId:name];
  if (secId != 0) {
    
#line 55
    (void) [map putWithId:@"dept_second_id" withId:[JavaLangInteger valueOfWithInt:secId]];
  }
  
#line 56
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 64
- (void)reqModyGenderWithInt:(int)gender {
  
#line 65
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"gender" withId:[JavaLangInteger valueOfWithInt:gender]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 70
- (void)reqModyDesWithNSString:(NSString *)des {
  
#line 71
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"description" withId:des];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 76
- (void)reqModyUniversityWithNSString:(NSString *)university {
  
#line 77
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"university" withId:university];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 82
- (void)reqModyEntranceTimeWithNSString:(NSString *)entranceTime {
  
#line 83
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"entrance_time" withId:entranceTime];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 88
- (void)reqModyMajorWithNSString:(NSString *)major {
  
#line 89
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"major" withId:major];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 94
- (void)reqModyTitleWithInt:(int)title {
  
#line 95
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"title" withId:[JavaLangInteger valueOfWithInt:title]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 100
- (void)reqModyEducationWithInt:(int)education {
  
#line 101
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"education" withId:[JavaLangInteger valueOfWithInt:education]];
  [self requestModifyDoctorWithJavaUtilMap:map];
}


#line 113
- (void)requestModifyDoctorWithJavaUtilMap:(id<JavaUtilMap>)map {
  
#line 114
  (void) [((id<JavaUtilMap>) nil_chk(map)) putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) saveCurrentUser];
  
#line 129
  NSString *url = [NSString stringWithFormat:@"%@/doctors/modify_doctor_profile.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:[ComFqLibJsonHelper createJsonWithJavaUtilMap:map]];
  ComFqHttpAsyncUploadloopLoopCell *cell = [[ComFqHttpAsyncUploadloopLoopCell alloc] initWithNSString:url withComFqHttpAsyncFQHttpParams:params];
  [((ComFqHalcyonHalcyonUploadLooper *) nil_chk([ComFqHalcyonHalcyonUploadLooper getInstance])) pushWithComFqHttpAsyncUploadloopLoopCell:cell];
}


#line 135
- (void)requestInvientWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:(id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>)callback {
  
#line 136
  JavaUtilHashMap *map = [[JavaUtilHashMap alloc] init];
  (void) [map putWithId:@"user_id" withId:[JavaLangInteger valueOfWithInt:[((ComFqHalcyonEntityUser *) nil_chk([ComFqLibToolsConstants getUser])) getUserId]]];
  NSString *url = [NSString stringWithFormat:@"%@/users/get_invitation_code.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()];
  ComFqHttpAsyncFQHttpParams *params = [[ComFqHttpAsyncFQHttpParams alloc] initWithFQJSONObject:[ComFqLibJsonHelper createJsonWithJavaUtilMap:map]];
  
#line 141
  (void) [((ComFqHalcyonApiApiSystem *) nil_chk([ComFqHalcyonApiApiSystem getInstance])) requireWithNSString:url withComFqHttpAsyncFQHttpParams:params withComFqHalcyonApiApiSystem_API_TYPEEnum:ComFqHalcyonApiApiSystem_API_TYPEEnum_get_DIRECT() withHalcyonHttpResponseHandle:[[ComFqHalcyonLogic2ResetDoctorInfoLogic_$1 alloc] initWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:callback]];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "reqModyHeadWithInt:", "reqModyHead", "V", 0x1, NULL },
    { "reqModyNameWithNSString:", "reqModyName", "V", 0x1, NULL },
    { "reqModyCityWithInt:", "reqModyCity", "V", 0x1, NULL },
    { "reqModyHospWithInt:withInt:withNSString:", "reqModyHosp", "V", 0x1, NULL },
    { "reqModyDeptWithInt:withInt:withNSString:", "reqModyDept", "V", 0x1, NULL },
    { "reqModyGenderWithInt:", "reqModyGender", "V", 0x1, NULL },
    { "reqModyDesWithNSString:", "reqModyDes", "V", 0x1, NULL },
    { "reqModyUniversityWithNSString:", "reqModyUniversity", "V", 0x1, NULL },
    { "reqModyEntranceTimeWithNSString:", "reqModyEntranceTime", "V", 0x1, NULL },
    { "reqModyMajorWithNSString:", "reqModyMajor", "V", 0x1, NULL },
    { "reqModyTitleWithInt:", "reqModyTitle", "V", 0x1, NULL },
    { "reqModyEducationWithInt:", "reqModyEducation", "V", 0x1, NULL },
    { "requestModifyDoctorWithJavaUtilMap:", "requestModifyDoctor", "V", 0x1, NULL },
    { "requestInvientWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:", "requestInvient", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ResetDoctorInfoLogic = { "ResetDoctorInfoLogic", "com.fq.halcyon.logic2", NULL, 0x1, 15, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2ResetDoctorInfoLogic;
}

@end

@interface ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback : NSObject
@end

@implementation ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "doInvientBackWithNSString:", "doInvientBack", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback = { "InvientCallback", "com.fq.halcyon.logic2", "ResetDoctorInfoLogic", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback;
}

@end

@implementation ComFqHalcyonLogic2ResetDoctorInfoLogic_$1


#line 142
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 143
  [((id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>) nil_chk(val$callback_)) doInvientBackWithNSString:@""];
}


#line 147
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 148
  if (responseCode == 0 && type == 1) {
    FQJSONObject *json = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    [((id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>) nil_chk(val$callback_)) doInvientBackWithNSString:[((FQJSONObject *) nil_chk(json)) optStringWithNSString:@"invitation_code"]];
  }
  else {
    
#line 152
    [((id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>) nil_chk(val$callback_)) doInvientBackWithNSString:@""];
  }
}

- (id)initWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:(id<ComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHalcyonLogic2ResetDoctorInfoLogic_InvientCallback:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$callback_", NULL, 0x1012, "Lcom.fq.halcyon.logic2.ResetDoctorInfoLogic$InvientCallback;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonLogic2ResetDoctorInfoLogic_$1 = { "$1", "com.fq.halcyon.logic2", "ResetDoctorInfoLogic", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHalcyonLogic2ResetDoctorInfoLogic_$1;
}

@end
