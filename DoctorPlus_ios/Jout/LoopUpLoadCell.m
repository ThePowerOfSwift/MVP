//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopUpLoadCell.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopUpLoadCell.java"

#include "FQHttpParams.h"
#include "IOSClass.h"
#include "JSONArray.h"
#include "JSONObject.h"
#include "LoopUpLoadCell.h"
#include "Photo.h"
#include "PhotoRecord.h"
#include "RecordItemSamp.h"
#include "RecordType.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"


#line 19
@implementation ComFqHttpAsyncUploadloopLoopUpLoadCell


#line 41
- (void)setOnUpLoadStateChangedListenerWithComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener:(id<ComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener>)l {
  
#line 42
  mUpLoadStateChangedListener_ = l;
}


#line 62
- (id)initWithNSString:(NSString *)url
withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params
withComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum:(ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum *)type {
  if (self =
#line 63
  [super initWithNSString:url withComFqHttpAsyncFQHttpParams:params]) {
    
#line 64
    self->mType_LoopUpLoadCell_ = type;
  }
  return self;
}


#line 67
- (void)onUpLoadErrorWithComFqHalcyonEntityPhoto:(ComFqHalcyonEntityPhoto *)photo {
  
#line 68
  if (mUpLoadStateChangedListener_ != nil) [mUpLoadStateChangedListener_ onFaildUpLoadAFile];
}


#line 71
- (void)onUpLoadSuccessWithComFqHalcyonEntityPhoto:(ComFqHalcyonEntityPhoto *)photo {
  
#line 72
  uploadedFileCount_++;
  if (mUpLoadStateChangedListener_ != nil) [mUpLoadStateChangedListener_ onSuccessUpLoadAFile];
}

- (void)addPhotosWithInt:(int)type
   withJavaUtilArrayList:(JavaUtilArrayList *)photos {
  
#line 79
  [super addPhotosWithInt:type withJavaUtilArrayList:photos];
}


#line 88
- (void)resetParams {
  
#line 89
  switch ([mType_LoopUpLoadCell_ ordinal]) {
    case ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPE_UP_TYPE_RECORD:
    @try {
      FQJSONObject *json = [((ComFqHttpAsyncFQHttpParams *) nil_chk(self->params_)) getJson];
      FQJSONArray *pRecords = [[FQJSONArray alloc] init];
      (void) [((FQJSONObject *) nil_chk(json)) putWithNSString:@"records" withId:pRecords];
      id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((JavaUtilHashMap *) nil_chk(records_)) keySet])) iterator];
      while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
        FQJSONObject *jsonObject = [[FQJSONObject alloc] init];
        (void) [pRecords putWithId:jsonObject];
        int key = [((JavaLangInteger *) nil_chk([iter next])) intValue];
        (void) [jsonObject putWithNSString:@"record_type" withInt:key];
        FQJSONArray *records_images = [[FQJSONArray alloc] init];
        (void) [jsonObject putWithNSString:@"records_images" withId:records_images];
        JavaUtilArrayList *value = [records_ getWithId:[JavaLangInteger valueOfWithInt:key]];
        for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(value)) size]; i++) {
          JavaUtilArrayList *array = [value getWithInt:i];
          FQJSONObject *phot = [[FQJSONObject alloc] init];
          FQJSONArray *photos = [[FQJSONArray alloc] init];
          for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(array)) size]; j++) {
            ComFqHalcyonEntityPhoto *p = [array getWithInt:j];
            (void) [photos putWithInt:[((ComFqHalcyonEntityPhoto *) nil_chk(p)) getImageId]];
          }
          (void) [phot putWithNSString:@"photo" withId:photos];
          (void) [records_images putWithId:phot];
        }
      }
    }
    @catch (
#line 116
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
    }
    break;
    case ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPE_UP_TYPE_Documents:
    
#line 122
    break;
    default:
    break;
  }
}


#line 128
- (int)getRecordId {
  
#line 129
  return recordId_;
}


#line 132
- (void)setRecordIdWithInt:(int)recordId {
  
#line 133
  self->recordId_ = recordId;
}

- (JavaUtilArrayList *)todRecordTypes {
  
#line 139
  JavaUtilArrayList *recordTypes = [[JavaUtilArrayList alloc] init];
  id<JavaUtilIterator> keys = [((id<JavaUtilSet>) nil_chk([((JavaUtilHashMap *) nil_chk(records_)) keySet])) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(keys)) hasNext]) {
    JavaLangInteger *integer = (JavaLangInteger *) check_class_cast([keys next], [JavaLangInteger class]);
    ComFqHalcyonEntityRecordType *recordType = [[ComFqHalcyonEntityRecordType alloc] init];
    JavaUtilArrayList *photos = [records_ getWithId:integer];
    [recordType setRecordTypeWithInt:[((JavaLangInteger *) nil_chk(integer)) intValue]];
    [recordTypes addWithId:recordType];
    JavaUtilArrayList *itemList = [[JavaUtilArrayList alloc] init];
    for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(photos)) size]; i++) {
      ComFqHalcyonEntityRecordItemSamp *samp = [[ComFqHalcyonEntityRecordItemSamp alloc] init];
      [samp setUuidWithNSString:uuid_];
      JavaUtilArrayList *sampPhotos = [photos getWithInt:i];
      JavaUtilArrayList *photoRecords = [[JavaUtilArrayList alloc] init];
      for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(sampPhotos)) size]; j++) {
        ComFqHalcyonEntityPhotoRecord *record = [[ComFqHalcyonEntityPhotoRecord alloc] init];
        ComFqHalcyonEntityPhoto *photo = [sampPhotos getWithInt:j];
        [record setImageIdWithInt:[((ComFqHalcyonEntityPhoto *) nil_chk(photo)) getImageId]];
        [record setLocalPathWithNSString:[photo getLocalPath]];
        [photoRecords addWithId:record];
      }
      [samp setRecStatusWithInt:ComFqHalcyonEntityRecordItemSamp_REC_UPLOAD];
      [samp setReocrdTypeWithInt:[integer intValue]];
      [samp setPhotosWithJavaUtilArrayList:photoRecords];
      [itemList addWithId:samp];
    }
    [recordType setItemListWithJavaUtilArrayList:itemList];
  }
  return recordTypes;
}

- (void)copyAllFieldsTo:(ComFqHttpAsyncUploadloopLoopUpLoadCell *)other {
  [super copyAllFieldsTo:other];
  other->mType_LoopUpLoadCell_ = mType_LoopUpLoadCell_;
  other->mUpLoadStateChangedListener_ = mUpLoadStateChangedListener_;
  other->recordId_ = recordId_;
  other->uuid_ = uuid_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setOnUpLoadStateChangedListenerWithComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener:", "setOnUpLoadStateChangedListener", "V", 0x1, NULL },
    { "initWithNSString:withComFqHttpAsyncFQHttpParams:withComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum:", "LoopUpLoadCell", NULL, 0x1, NULL },
    { "onUpLoadErrorWithComFqHalcyonEntityPhoto:", "onUpLoadError", "V", 0x1, NULL },
    { "onUpLoadSuccessWithComFqHalcyonEntityPhoto:", "onUpLoadSuccess", "V", 0x1, NULL },
    { "addPhotosWithInt:withJavaUtilArrayList:", "addPhotos", "V", 0x1, NULL },
    { "resetParams", NULL, "V", 0x1, NULL },
    { "getRecordId", NULL, "I", 0x1, NULL },
    { "setRecordIdWithInt:", "setRecordId", "V", 0x1, NULL },
    { "todRecordTypes", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_LoopUpLoadCell_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHttpAsyncUploadloopLoopUpLoadCell_serialVersionUID },
    { "mUpLoadStateChangedListener_", NULL, 0x2, "Lcom.fq.http.async.uploadloop.LoopUpLoadCell$OnUpLoadStateChangedListener;", NULL,  },
    { "mType_LoopUpLoadCell_", "mType", 0x2, "Lcom.fq.http.async.uploadloop.LoopUpLoadCell$UP_TYPE;", NULL,  },
    { "recordId_", NULL, 0x2, "I", NULL,  },
    { "uuid_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopUpLoadCell = { "LoopUpLoadCell", "com.fq.http.async.uploadloop", NULL, 0x1, 9, methods, 5, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopUpLoadCell;
}

@end

@interface ComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener : NSObject
@end

@implementation ComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onSuccessUpLoadAFile", NULL, "V", 0x401, NULL },
    { "onFaildUpLoadAFile", NULL, "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener = { "OnUpLoadStateChangedListener", "com.fq.http.async.uploadloop", "LoopUpLoadCell", 0x201, 2, methods, 0, NULL, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopUpLoadCell_OnUpLoadStateChangedListener;
}

@end

#line 46

BOOL ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_initialized = NO;

ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum *ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_values[2];

@implementation ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

+ (void)initialize {
  if (self == [ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum class]) {
    ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_UP_TYPE_RECORD = [[ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum alloc] initWithNSString:@"UP_TYPE_RECORD" withInt:0];
    ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_UP_TYPE_Documents = [[ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum alloc] initWithNSString:@"UP_TYPE_Documents" withInt:1];
    ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_initialized = YES;
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithObjects:ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_values count:2 type:[IOSClass classWithClass:[ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum class]]];
}

+ (ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < 2; i++) {
    ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum *e = ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_values[i];
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
    { "UP_TYPE_RECORD", "UP_TYPE_RECORD", 0x4019, "Lcom.fq.http.async.uploadloop.LoopUpLoadCell$UP_TYPE;", &ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_UP_TYPE_RECORD,  },
    { "UP_TYPE_Documents", "UP_TYPE_Documents", 0x4019, "Lcom.fq.http.async.uploadloop.LoopUpLoadCell$UP_TYPE;", &ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum_UP_TYPE_Documents,  },
  };
  static const char *superclass_type_args[] = {"Lcom.fq.http.async.uploadloop.LoopUpLoadCell$UP_TYPE;"};
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum = { "UP_TYPE", "com.fq.http.async.uploadloop", "LoopUpLoadCell", 0x4019, 1, methods, 2, fields, 1, superclass_type_args};
  return &_ComFqHttpAsyncUploadloopLoopUpLoadCell_UP_TYPEEnum;
}

@end
