//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopCell.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopCell.java"

#include "FQHttpParams.h"
#include "FileHelper.h"
#include "FileSystem.h"
#include "IOSClass.h"
#include "LoopCell.h"
#include "MD5.h"
#include "Photo.h"
#include "RequestParams.h"
#include "java/io/File.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"


#line 16
@implementation ComFqHttpAsyncUploadloopLoopCell


#line 58
- (void)addPhotosWithInt:(int)type
   withJavaUtilArrayList:(JavaUtilArrayList *)photos {
  
#line 59
  if (photos == nil || [photos size] == 0) return;
  JavaUtilArrayList *photosArray = [((JavaUtilHashMap *) nil_chk(records_)) getWithId:[JavaLangInteger valueOfWithInt:type]];
  if (photosArray == nil) {
    photosArray = [[JavaUtilArrayList alloc] init];
    [photosArray addWithId:photos];
    (void) [records_ putWithId:[JavaLangInteger valueOfWithInt:type] withId:photosArray];
  }
  else {
    
#line 66
    [photosArray addWithId:photos];
  }
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(photos)) size]; i++) {
    JavaIoFile *file = [[JavaIoFile alloc] initWithNSString:[((ComFqHalcyonEntityPhoto *) nil_chk([photos getWithInt:i])) getLocalPath]];
    allFileLength_ += [file length];
    key_ = [NSString stringWithFormat:@"%@%@", key_, [file getPath]];
    allFileCount_++;
  }
  if ([records_ size] > 1) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"a cell  not support different type now!"];
  }
  key_ = [ComFqLibToolsMD5 Md5WithNSString:key_];
}


#line 80
- (id)initWithNSString:(NSString *)url
withComFqHttpAsyncFQHttpParams:(ComFqHttpAsyncFQHttpParams *)params {
  if (self = [super init]) {
    allFileCount_ =
#line 52
    0;
    uploadedFileCount_ =
#line 54
    0;
    
#line 81
    mType_ = ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_get_CELL_OTHER();
    
#line 82
    name_ = @"";
    
#line 83
    self->url_ = url;
    
#line 84
    self->params_ = params;
    allFileLength_ = 0;
    
#line 86
    NSString *tmpKey = url;
    
#line 87
    records_ = [[JavaUtilHashMap alloc] init];
    
#line 88
    if (params != nil) {
      tmpKey = [NSString stringWithFormat:@"%@%@", tmpKey, [params getStringParams]];
      if (![((JavaUtilConcurrentConcurrentHashMap *) nil_chk(params->fileParams_)) isEmpty]) {
        id<JavaUtilIterator> iterator = [((id<JavaUtilSet>) nil_chk([params->fileParams_ keySet])) iterator];
        while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
          NSString *key = [iterator next];
          ComLoopjAndroidHttpRequestParams_FileWrapper *fileWrapper = [params->fileParams_ getWithId:key];
          JavaIoFile *file = ((ComLoopjAndroidHttpRequestParams_FileWrapper *) nil_chk(fileWrapper))->file_;
          if ([((JavaIoFile *) nil_chk(file)) exists]) {
            allFileLength_ += [file length];
          }
          tmpKey = [NSString stringWithFormat:@"%@%@", tmpKey, [file getPath]];
        }
      }
    }
    
#line 104
    key_ = [ComFqLibToolsMD5 Md5WithNSString:tmpKey];
  }
  return self;
}


#line 107
- (void)save {
  
#line 108
  [ComFqLibFileHelper saveSerializableObjectWithId:self withNSString:[NSString stringWithFormat:@"%@/%@", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getUserLoopPath], key_]];
}


#line 111
+ (ComFqHttpAsyncUploadloopLoopCell *)load__WithNSString:(NSString *)path {
  
#line 112
  id data = [ComFqLibFileHelper loadSerializableObjectWithNSString:path];
  if (data != nil && [data isKindOfClass:[ComFqHttpAsyncUploadloopLoopCell class]]) {
    return (ComFqHttpAsyncUploadloopLoopCell *) check_class_cast(data, [ComFqHttpAsyncUploadloopLoopCell class]);
  }
  return nil;
}


#line 119
- (void)deletFile {
  
#line 120
  JavaIoFile *file = [[JavaIoFile alloc] initWithNSString:[NSString stringWithFormat:@"%@/%@", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getUserLoopPath], key_]];
  if ([file exists]) [file delete__];
}


#line 124
- (void)setTypeWithComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum:(ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum *)type {
  
#line 125
  self->mType_ = type;
}


#line 128
- (ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum *)getType {
  
#line 129
  return self->mType_;
}

- (void)copyAllFieldsTo:(ComFqHttpAsyncUploadloopLoopCell *)other {
  [super copyAllFieldsTo:other];
  other->allFileCount_ = allFileCount_;
  other->allFileLength_ = allFileLength_;
  other->key_ = key_;
  other->lastLoadedLength_ = lastLoadedLength_;
  other->mType_ = mType_;
  other->name_ = name_;
  other->nextExceptLength_ = nextExceptLength_;
  other->params_ = params_;
  other->records_ = records_;
  other->uploadedFileCount_ = uploadedFileCount_;
  other->uploadedLength_ = uploadedLength_;
  other->url_ = url_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addPhotosWithInt:withJavaUtilArrayList:", "addPhotos", "V", 0x1, NULL },
    { "initWithNSString:withComFqHttpAsyncFQHttpParams:", "LoopCell", NULL, 0x1, NULL },
    { "save", NULL, "V", 0x1, NULL },
    { "load__WithNSString:", "load", "Lcom.fq.http.async.uploadloop.LoopCell;", 0x9, NULL },
    { "deletFile", NULL, "V", 0x1, NULL },
    { "setTypeWithComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum:", "setType", "V", 0x1, NULL },
    { "getType", NULL, "Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mType_", NULL, 0x2, "Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;", NULL,  },
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComFqHttpAsyncUploadloopLoopCell_serialVersionUID },
    { "name_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "key_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "url_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "params_", NULL, 0x1, "Lcom.fq.http.async.FQHttpParams;", NULL,  },
    { "uploadedLength_", NULL, 0x1, "J", NULL,  },
    { "nextExceptLength_", NULL, 0x1, "J", NULL,  },
    { "lastLoadedLength_", NULL, 0x1, "J", NULL,  },
    { "allFileLength_", NULL, 0x1, "J", NULL,  },
    { "allFileCount_", NULL, 0x1, "I", NULL,  },
    { "uploadedFileCount_", NULL, 0x1, "I", NULL,  },
    { "records_", NULL, 0x1, "Ljava.util.HashMap;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCell = { "LoopCell", "com.fq.http.async.uploadloop", NULL, 0x1, 7, methods, 13, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopCell;
}

@end

#line 18

BOOL ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_initialized = NO;

ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum *ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_values[3];

@implementation ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

+ (void)initialize {
  if (self == [ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum class]) {
    ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_UPLOAD = [[ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum alloc] initWithNSString:@"CELL_UPLOAD" withInt:0];
    ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_DOWNLOAD = [[ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum alloc] initWithNSString:@"CELL_DOWNLOAD" withInt:1];
    ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_OTHER = [[ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum alloc] initWithNSString:@"CELL_OTHER" withInt:2];
    ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_initialized = YES;
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithObjects:ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_values count:3 type:[IOSClass classWithClass:[ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum class]]];
}

+ (ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < 3; i++) {
    ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum *e = ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_values[i];
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
    { "CELL_UPLOAD", "CELL_UPLOAD", 0x4019, "Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;", &ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_UPLOAD,  },
    { "CELL_DOWNLOAD", "CELL_DOWNLOAD", 0x4019, "Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;", &ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_DOWNLOAD,  },
    { "CELL_OTHER", "CELL_OTHER", 0x4019, "Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;", &ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum_CELL_OTHER,  },
  };
  static const char *superclass_type_args[] = {"Lcom.fq.http.async.uploadloop.LoopCell$CELL_TYPE;"};
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum = { "CELL_TYPE", "com.fq.http.async.uploadloop", "LoopCell", 0x4019, 1, methods, 3, fields, 1, superclass_type_args};
  return &_ComFqHttpAsyncUploadloopLoopCell_CELL_TYPEEnum;
}

@end
