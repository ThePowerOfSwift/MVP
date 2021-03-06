//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/extend/filesystem/FileSystem.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonExtendFilesystemFileSystem_H_
#define _ComFqHalcyonExtendFilesystemFileSystem_H_

@class ComFqHalcyonEntityHalcyonEntity;
@class ComFqHalcyonEntityUser;
@class ComFqHttpAsyncFQHttpParams;
@class FQJSONObject;
@class IOSByteArray;
@class JavaIoFile;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "java/lang/Runnable.h"

@interface ComFqHalcyonExtendFilesystemFileSystem : NSObject {
 @public
  NSString *mPhoneRootPath_;
  NSString *mSDCardRootPath_;
  NSString *mImageRootPath_;
}

- (id)init;

+ (ComFqHalcyonExtendFilesystemFileSystem *)getInstance;

+ (void)initWithRootPathWithNSString:(NSString *)phoenRootPath
                        withNSString:(NSString *)sdCardRootPath OBJC_METHOD_FAMILY_NONE;

- (NSString *)getPhoneRootPath;

- (NSString *)getSDCardRootPath;

- (NSString *)getSDCImgRootPath;

- (NSString *)getMD5UserIdWithNSString:(NSString *)userId;

- (NSString *)getCurrentMD5Id;

- (NSString *)getUserPath;

- (NSString *)getUserPatientsPath;

- (NSString *)getUserPathWithNSString:(NSString *)id_;

- (NSString *)getFriendPath;

- (NSString *)getFriendPathWithImageIdWithInt:(int)imageId;

- (NSString *)getOthersPath;

- (NSString *)getImgTempPath;

- (NSString *)getRecordImgPath;

- (void)saveUserWithComFqHalcyonEntityUser:(ComFqHalcyonEntityUser *)user;

- (void)saveCurrentUser;

- (void)encryptUserInfoWithComFqHalcyonEntityUser:(ComFqHalcyonEntityUser *)user;

- (NSString *)deEncryptUserInfoWithNSString:(NSString *)str;

- (ComFqHalcyonEntityUser *)loadCurrentUser;

- (ComFqHalcyonEntityUser *)loadUserWithNSString:(NSString *)id_;

- (void)saveLoginUserWithNSString:(NSString *)phone
                     withNSString:(NSString *)pwd
                          withInt:(int)id_;

- (JavaUtilArrayList *)loadLoginUser;

- (FQJSONObject *)loadUserAuthState;

- (void)saveEntityWithComFqHalcyonEntityHalcyonEntity:(ComFqHalcyonEntityHalcyonEntity *)entity;

- (BOOL)comparePasswordWithNSString:(NSString *)phoneNumber
                       withNSString:(NSString *)password;

- (NSString *)getUserImagePath;

- (NSString *)getUserApiPath;

- (NSString *)getRecordCachePath;

- (NSString *)getUserCachePath;

- (NSString *)getUserLoopPath;

- (NSString *)getUserHeadName;

- (NSString *)getUserHeadPath;

- (NSString *)getAuthImgNameByTypeWithInt:(int)type;

- (NSString *)getAuthImgPathByTypeWithInt:(int)type;

- (NSString *)getUserActionPath;

- (NSString *)getCacheSize;

- (NSString *)clearCache;

- (BOOL)isApiUrlWithNSString:(NSString *)url;

- (NSString *)getLocalPathWithNSString:(NSString *)url
        withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params;

- (void)saveRecordImgWithByteArray:(IOSByteArray *)bys
                      withNSString:(NSString *)name;

- (void)copyAllFieldsTo:(ComFqHalcyonExtendFilesystemFileSystem *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonExtendFilesystemFileSystem_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, mPhoneRootPath_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, mSDCardRootPath_, NSString *)
J2OBJC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, mImageRootPath_, NSString *)

FOUNDATION_EXPORT NSString *ComFqHalcyonExtendFilesystemFileSystem_USER_DIR_;
J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonExtendFilesystemFileSystem, USER_DIR_, NSString *)

FOUNDATION_EXPORT ComFqHalcyonExtendFilesystemFileSystem *ComFqHalcyonExtendFilesystemFileSystem_instance_;
J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonExtendFilesystemFileSystem, instance_, ComFqHalcyonExtendFilesystemFileSystem *)
J2OBJC_STATIC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, instance_, ComFqHalcyonExtendFilesystemFileSystem *)

FOUNDATION_EXPORT NSString *ComFqHalcyonExtendFilesystemFileSystem_RED_IMG_FT_;
J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonExtendFilesystemFileSystem, RED_IMG_FT_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, RED_IMG_FT_, NSString *)

FOUNDATION_EXPORT NSString *ComFqHalcyonExtendFilesystemFileSystem_RECORD_FOLDER_;
J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonExtendFilesystemFileSystem, RECORD_FOLDER_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem, RECORD_FOLDER_, NSString *)

@interface ComFqHalcyonExtendFilesystemFileSystem_$1 : NSObject < JavaLangRunnable > {
 @public
  JavaIoFile *val$file_;
}

- (void)run;

- (id)initWithJavaIoFile:(JavaIoFile *)capture$0;

@end

__attribute__((always_inline)) inline void ComFqHalcyonExtendFilesystemFileSystem_$1_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonExtendFilesystemFileSystem_$1, val$file_, JavaIoFile *)

#endif // _ComFqHalcyonExtendFilesystemFileSystem_H_
