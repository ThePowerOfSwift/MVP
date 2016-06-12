//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/tools/Constants.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/tools/Constants.java"

#include "Constants.h"
#include "FileSystem.h"
#include "IOSPrimitiveArray.h"
#include "User.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

BOOL ComFqLibToolsConstants_initialized = NO;


#line 12
@implementation ComFqLibToolsConstants

BOOL ComFqLibToolsConstants_TARGET_FOR_IOS_ = NO;
BOOL ComFqLibToolsConstants_DEBUG__ = 
#line 19
YES;
IOSByteArray * ComFqLibToolsConstants_KEY_STRING_;
NSString * ComFqLibToolsConstants_KEY_CTS_ = 
#line 44
@"GY380qSEn1jzE80Uai3346HX";
ComFqHalcyonEntityUser * ComFqLibToolsConstants_mUser_;
JavaUtilArrayList * ComFqLibToolsConstants_tagList_;
JavaUtilHashMap * ComFqLibToolsConstants_contactsMap_;
JavaUtilArrayList * ComFqLibToolsConstants_contactsList_;
JavaUtilArrayList * ComFqLibToolsConstants_alarms_;


#line 48
+ (void)setUserWithComFqHalcyonEntityUser:(ComFqHalcyonEntityUser *)user {
  
#line 49
  ComFqLibToolsConstants_mUser_ = user;
}


#line 52
+ (ComFqHalcyonEntityUser *)getUser {
  
#line 53
  if (ComFqLibToolsConstants_mUser_ == nil || [ComFqLibToolsConstants_mUser_ getUserId] == 0) {
    ComFqLibToolsConstants_mUser_ = [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) loadCurrentUser];
  }
  return ComFqLibToolsConstants_mUser_;
}


#line 59
+ (BOOL)isLogined {
  
#line 60
  return ComFqLibToolsConstants_mUser_ != nil;
}


#line 78
+ (NSString *)getShareTextWithInt:(int)type {
  
#line 79
  switch (type) {
    case 1:
    return @"\u533b\u52a0\uff0c\u52a9\u529b\u597d\u533b\u751f\u3002\u8f7b\u677e\u5730\u79ef\u7d2f\u75c5\u5386\uff0c\u9ad8\u6548\u5730\u7ba1\u7406\u60a3\u8005\uff0c\u4e3a\u533b\u751f\u81ea\u7531\u52a9\u529b\u3002\u4e0b\u8f7d\u5730\u5740\uff1a";
    case 2:
    return @"\u533b\u52a0\uff0c\u52a9\u529b\u597d\u533b\u751f\u3002\u8f7b\u677e\u5730\u79ef\u7d2f\u75c5\u5386\uff0c\u9ad8\u6548\u5730\u7ba1\u7406\u60a3\u8005\u3002";
    case 3:
    default:
    return @"\u8f7b\u677e\u5730\u79ef\u7d2f\u75c5\u5386\uff0c\u9ad8\u6548\u5730\u7ba1\u7406\u60a3\u8005\uff0c\u4e3a\u533b\u751f\u81ea\u7531\u52a9\u529b\u3002\u70b9\u51fb\u8fdb\u5165\u4e0b\u8f7d\u9875\u9762\u3002";
  }
}


#line 94
+ (NSString *)getShareTitle {
  
#line 95
  return @"\u533b\u52a0\uff0c\u52a9\u529b\u597d\u533b\u751f";
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComFqLibToolsConstants class]) {
    ComFqLibToolsConstants_KEY_STRING_ =
#line 40
    [@"GY380qSEn1jzE80Uai3346HX" getBytes];
    ComFqLibToolsConstants_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setUserWithComFqHalcyonEntityUser:", "setUser", "V", 0x9, NULL },
    { "getUser", NULL, "Lcom.fq.halcyon.entity.User;", 0x9, NULL },
    { "isLogined", NULL, "Z", 0x9, NULL },
    { "getShareTextWithInt:", "getShareText", "Ljava.lang.String;", 0x9, NULL },
    { "getShareTitle", NULL, "Ljava.lang.String;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "TARGET_FOR_IOS_", NULL, 0x9, "Z", &ComFqLibToolsConstants_TARGET_FOR_IOS_,  },
    { "DEBUG__", "DEBUG", 0x9, "Z", &ComFqLibToolsConstants_DEBUG__,  },
    { "MALE_", NULL, 0x19, "S", NULL, .constantValue.asShort = ComFqLibToolsConstants_MALE },
    { "FEMALE_", NULL, 0x19, "S", NULL, .constantValue.asShort = ComFqLibToolsConstants_FEMALE },
    { "ROLE_DOCTOR_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_ROLE_DOCTOR },
    { "ROLE_DOCTOR_STUDENT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_ROLE_DOCTOR_STUDENT },
    { "ROLE_PATIENT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_ROLE_PATIENT },
    { "CLIENT_DOCTOR_ANDORID_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_CLIENT_DOCTOR_ANDORID },
    { "CLIENT_DOCTOR_IOS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_CLIENT_DOCTOR_IOS },
    { "CLIENT_HEALTH_ANDORID_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_CLIENT_HEALTH_ANDORID },
    { "CLIENT_HEALTH_IOS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComFqLibToolsConstants_CLIENT_HEALTH_IOS },
    { "KEY_STRING_", NULL, 0x9, "[B", &ComFqLibToolsConstants_KEY_STRING_,  },
    { "KEY_CTS_", NULL, 0x9, "Ljava.lang.String;", &ComFqLibToolsConstants_KEY_CTS_,  },
    { "mUser_", NULL, 0xa, "Lcom.fq.halcyon.entity.User;", &ComFqLibToolsConstants_mUser_,  },
    { "tagList_", NULL, 0x9, "Ljava.util.ArrayList;", &ComFqLibToolsConstants_tagList_,  },
    { "contactsMap_", NULL, 0x9, "Ljava.util.HashMap;", &ComFqLibToolsConstants_contactsMap_,  },
    { "contactsList_", NULL, 0x9, "Ljava.util.ArrayList;", &ComFqLibToolsConstants_contactsList_,  },
    { "alarms_", NULL, 0x9, "Ljava.util.ArrayList;", &ComFqLibToolsConstants_alarms_,  },
  };
  static J2ObjcClassInfo _ComFqLibToolsConstants = { "Constants", "com.fq.lib.tools", NULL, 0x1, 6, methods, 18, fields, 0, NULL};
  return &_ComFqLibToolsConstants;
}

@end